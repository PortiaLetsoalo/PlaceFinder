using PlaceFinder.Models;
using PlaceFinder.Services;
using Prism.Navigation;
using System.Threading.Tasks;
using Unity;

namespace PlaceFinder.ViewModels
{
    public class PlacesDetailsViewModel : ViewModelBase
    {
        private readonly IPlaceFinderService _placeFinderService;
        private LocationInfo _placeDetail;
        private bool _isLoading;
        public LocationInfo PlaceDetail
        {
            get => _placeDetail;
            set => SetProperty(ref _placeDetail, value);
        }

        public bool IsLoading
        {
            get => _isLoading;
            set => SetProperty(ref _isLoading, value);
        }

        public PlacesDetailsViewModel(INavigationService navigationService, IPlaceFinderService placeFinderService)
            : base(navigationService)
        {
            _placeFinderService = placeFinderService;
            Title = "";
        }

        public override async void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.ContainsKey("selectedPlace"))
            {
                var place = (Place)parameters["selectedPlace"];
                await LoadPlaceDetails(place.PlaceId);
            }
        }

        public async Task LoadPlaceDetails(string placeId)
        {
            IsLoading = true;

            var results = await _placeFinderService.GetPlaceAsync(placeId);

            if (results != null)
            {
                PlaceDetail = results.Data;
            }

            IsLoading = false;
        }
    }
}
