using PlaceFinder.Services;
using PlaceFinder.ViewModels;
using PlaceFinder.Views;
using Prism;
using Prism.Ioc;
using Prism.Unity;
using Unity;
using Unity.Lifetime;
using Xamarin.Essentials.Implementation;
using Xamarin.Essentials.Interfaces;
using Xamarin.Forms;

namespace PlaceFinder
{
    public partial class App
    {
        public App(IPlatformInitializer initializer)
            : base(initializer)
        {
        }

        protected override async void OnInitialized()
        {
            InitializeComponent();
            Settings.PlaceFinderSettings.BackendUrl = "https://staging.api.eos.kerridgecs.online";
            await NavigationService.NavigateAsync("NavigationPage/PlacesPage");
        }

        public void RegisterServicesTypes(IUnityContainer container)
        {
            container.RegisterType<IPlaceFinderService, PlaceFinderService>(new ContainerControlledLifetimeManager());
        }
        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            var container = containerRegistry.GetContainer();
            RegisterServicesTypes(container);
            containerRegistry.RegisterSingleton<IAppInfo, AppInfoImplementation>();
            containerRegistry.RegisterForNavigation<NavigationPage>();
            containerRegistry.RegisterForNavigation<MainPage, MainPageViewModel>();
            containerRegistry.RegisterForNavigation<LoginPage, LoginPageViewModel>();
            containerRegistry.RegisterForNavigation<PlacesPage, PlacesViewModel>();
            containerRegistry.RegisterForNavigation<PlacesDetailsPage, PlacesDetailsViewModel>();
        }
    }
}
