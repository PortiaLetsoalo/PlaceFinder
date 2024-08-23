using Moq;
using PlaceFinder.Models;
using PlaceFinder.Services;
using PlaceFinder.Settings;
using Prism.Commands;
using Prism.Navigation;
using System.Collections.ObjectModel;

namespace UniTest.Test
{
    public class PlacesViewModelTests
    {
        private Mock<IPlaceFinderService> _placeFinderServiceMock;
        private Mock<INavigationService> _navigationServiceMock;
        private Mock<IPreferencesWrapper> _preferencesWrapperMock;

        private PlacesViewModel _viewModel;


        [SetUp]
        public void Setup()
        {
            _placeFinderServiceMock = new Mock<IPlaceFinderService>();
            _navigationServiceMock = new Mock<INavigationService>();
            _preferencesWrapperMock = new Mock<IPreferencesWrapper>();

            // Setup mock values for PreferencesWrapper
            _preferencesWrapperMock.Setup(p => p.Get("BackendUrl", It.IsAny<string>()))
                .Returns("https://staging.api.eos.kerridgecs.online");
            _preferencesWrapperMock.Setup(p => p.Get("Username", It.IsAny<string>()))
                .Returns("94eb850d-448f-48ef-a085-5fee4807606e.apps.kerridgecs.com");
            _preferencesWrapperMock.Setup(p => p.Get("Password", It.IsAny<string>()))
                .Returns("b609f130-2d13-43d4-93df-f8ab9f1cafde");
            _viewModel = new PlacesViewModel(_navigationServiceMock.Object, _placeFinderServiceMock.Object);
        }

        [Test]
        public async Task ItemTappedCommand_ShouldNavigateToDetailsPage()
        {

            var place = new Place { MainText = "Eiffel Tower", Description = "Famous landmark" };

            ((DelegateCommand<Place>)_viewModel.ItemTappedCommand).Execute(place);

            _navigationServiceMock.Verify(n => n.NavigateAsync("PlacesDetailsPage",
                It.Is<NavigationParameters>(p => p["selectedPlace"] == place)), Times.Once);
        }

        [Test]
        public void SearchQueryText_ShouldTriggerSearch()
        {
            var searchQuery = "Paris";
            _viewModel.SearchQueryText = searchQuery;

            _placeFinderServiceMock.Verify(s => s.GetPlacesAsync(searchQuery), Times.Once);
        }


        [Test]
        public async Task PerformSearchCommand_ShouldHandleEmptyQuery()
        {
            _viewModel.SearchQueryText = string.Empty;
            _viewModel.PerformSearchCommand.Execute();

            Assert.IsEmpty(_viewModel.Places);
            Assert.IsFalse(_viewModel.IsLoading);
        }

        [Test]
        public void ClearSearchResults_ShouldEmptyPlacesCollection()
        {
            _viewModel.Places = new ObservableCollection<Place>
            {
                new Place { MainText = "Eiffel Tower", Description = "Famous landmark" }
            };

            _viewModel.ClearSearchResults();

            Assert.IsEmpty(_viewModel.Places);
        }
    }
}
