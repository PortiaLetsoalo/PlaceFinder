using PlaceFinder.Models;
using PlaceFinder.Services;
using PlaceFinder.ViewModels;
using Prism.Commands;
using Prism.Navigation;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;

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
    public ICommand ItemTappedCommand { get; }

    public PlacesViewModel(INavigationService navigationService, IPlaceFinderService placeFinderService)
        : base(navigationService)
    {
        _placeFinderService = placeFinderService;
        Places = new ObservableCollection<Place>();
        PerformSearchCommand = new DelegateCommand(async () => await PerformSearch());

        // Initialize ItemTappedCommand with a lambda to call OnItemTapped
        ItemTappedCommand = new DelegateCommand<Place>(OnItemTapped);
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

    private async void  OnItemTapped(Place place)
    {
        if (place != null)
        {
            var parameters = new NavigationParameters { { "selectedPlace", place } };
            await NavigationService.NavigateAsync("PlacesDetailsPage", parameters);
        }
    }

    public override async void OnNavigatedTo(INavigationParameters parameters)
    {
        await _placeFinderService.GetTokenAsync();
    }

    public void ClearSearchResults()
    {
        Places = new ObservableCollection<Place>();
    }
}
