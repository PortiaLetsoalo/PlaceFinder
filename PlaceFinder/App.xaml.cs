using PlaceFinder.Services;
using PlaceFinder.Settings;
using PlaceFinder.ViewModels;
using PlaceFinder.Views;
using Prism;
using Prism.Ioc;
using Prism.Unity;
using System.ComponentModel;
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
            await NavigationService.NavigateAsync("NavigationPage/PlacesPage");
        }

        public void RegisterServicesTypes(IUnityContainer container)
        {
            container.RegisterType<IPreferencesWrapper, PreferencesWrapper>(new ContainerControlledLifetimeManager());
            container.RegisterType<IPlaceFinderService, PlaceFinderService>(new ContainerControlledLifetimeManager());
        }
        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            var container = containerRegistry.GetContainer();
            RegisterServicesTypes(container);
            containerRegistry.RegisterSingleton<IAppInfo, AppInfoImplementation>();
            containerRegistry.RegisterForNavigation<NavigationPage>();
            containerRegistry.RegisterForNavigation<MainPage, MainPageViewModel>();
            containerRegistry.RegisterForNavigation<PlacesPage, PlacesViewModel>();
            containerRegistry.RegisterForNavigation<PlacesDetailsPage, PlacesDetailsViewModel>();
        }
    }
}
