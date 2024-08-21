using Newtonsoft.Json;
using PlaceFinder.Models;
using PlaceFinder.Services;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Navigation;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Unity;
using Xamarin.Forms;

namespace PlaceFinder.ViewModels
{
    public class PlacesViewModel : ViewModelBase
    {
        private string _searchQueryText;
        private ObservableCollection<Place> _places;
        private bool _isLoading;
        private readonly IPlaceFinderService _placeFinderService;
        private Place _selectedPlace;
        public string UserName { get; set; }
        public string Password { get; set; }
        private bool _isNavigating = false;

        public string SearchQueryText
        {
            get => _searchQueryText;
            set
            {
                SetProperty(ref _searchQueryText, value);
                PerformSearchCommand.Execute();
            }
        }

        public Place SelectedPlace
        {
            get => _selectedPlace;
            set
            {
                SetProperty(ref _selectedPlace, value);
                if (_selectedPlace != null)
                {
                    OnPlaceSelectedCommand.Execute();
                }
            }
        }


        public ObservableCollection<Place> Places
        {
            get => _places;
            set => SetProperty(ref _places, value);
        }

        public bool IsLoading
        {
            get => _isLoading;
            set => SetProperty(ref _isLoading, value);
        }

        public DelegateCommand PerformSearchCommand { get; }
        private IUnityContainer _unityContainer { get; set; }
        public DelegateCommand OnPlaceSelectedCommand { get; set; }
        public PlacesViewModel(INavigationService navigationService, IUnityContainer unityContainer)
            : base(navigationService)
        {
            _unityContainer = unityContainer;
            _placeFinderService = _unityContainer.Resolve<IPlaceFinderService>();
            Places = new ObservableCollection<Place>();
            PerformSearchCommand = new DelegateCommand(async () => await PerformSearch());
            OnPlaceSelectedCommand = new DelegateCommand(async () => await OnPlaceSelected());
            UserName = Settings.PlaceFinderSettings.UserName;
            Password = Settings.PlaceFinderSettings.Password;
        }

        private async Task PerformSearch()
        {
            if (string.IsNullOrEmpty(SearchQueryText))
                return;

            IsLoading = true;
            var places = await _placeFinderService.GetPlacesAsync(SearchQueryText);
            Places = new ObservableCollection<Place>(places.Data);
            IsLoading = false;
        }

        private async Task OnPlaceSelected()
        {
            if (_isNavigating)
                return;

            try
            {
                _isNavigating = true;

                var parameters = new NavigationParameters { { "selectedPlace", SelectedPlace } };
                await NavigationService.NavigateAsync("PlacesDetailsPage", parameters);
            }
            finally
            {
                _isNavigating = false;
            }
        }

        public override async void OnNavigatedTo(INavigationParameters parameters)
        {
            await _placeFinderService.GetTokenAsync(UserName ?? "", Password ?? "");
        }

        public void ClearSearchResults()
        {
            Places = new ObservableCollection<Place>();
        }


    }
}
