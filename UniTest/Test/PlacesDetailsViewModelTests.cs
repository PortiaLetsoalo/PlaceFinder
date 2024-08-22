using Moq;
using PlaceFinder.Models;
using PlaceFinder.Services;
using PlaceFinder.ViewModels;
using Prism.Navigation;

namespace UniTest
{
    [TestFixture]
    public class PlacesDetailsViewModelTests
    {
        private Mock<IPlaceFinderService> _placeFinderServiceMock;
        private Mock<INavigationService> _navigationServiceMock;
        private PlacesDetailsViewModel _viewModel;

        [SetUp]
        public void Setup()
        {
            _placeFinderServiceMock = new Mock<IPlaceFinderService>();
            _navigationServiceMock = new Mock<INavigationService>();

            _viewModel = new PlacesDetailsViewModel(_navigationServiceMock.Object,_placeFinderServiceMock.Object);
        }

        [Test]
        public async Task LoadPlaceDetails_ShouldSetPlaceDetailAndIsLoading()
        {
            var placeId = "ChIJMYU_e2_CzRIR_JzEOkx493Q";
            var expectedPlace = new LocationInfo { Name = "Monaco" };
            _placeFinderServiceMock.Setup(s => s.GetPlaceAsync(placeId))
                .ReturnsAsync(new PlaceDetails { Data = expectedPlace });

            await _viewModel.LoadPlaceDetails(placeId);

            Assert.IsFalse(_viewModel.IsLoading);
            Assert.AreEqual(expectedPlace, _viewModel.PlaceDetail);
        }
    }
}
