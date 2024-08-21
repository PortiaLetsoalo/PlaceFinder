using Acr.UserDialogs;
using PlaceFinder.Services;
using Prism.Commands;
using Prism.Navigation;
using System;
using System.Threading.Tasks;
using Unity;

namespace PlaceFinder.ViewModels
{
    public class LoginPageViewModel : ViewModelBase
    {
        private string _title;
        public string Title
        {
            get { return _title; }
            set { SetProperty(ref _title, value); }
        }
        private readonly IPlaceFinderService _placeFinderService;
        public string UserName { get; set; }
        public string Password { get; set; }
        public DelegateCommand LoginCommand { get; }
        private IUnityContainer _unityContainer { get; set; }
        public INavigationService _navigationService { get; set; }
        public string AppTitle { get; set; }

        public LoginPageViewModel(INavigationService navigationService, IUnityContainer unityContainer) : base(navigationService)
        {
             _unityContainer = unityContainer;
            _placeFinderService = _unityContainer.Resolve<IPlaceFinderService>();
            _navigationService = navigationService;
            LoginCommand = new DelegateCommand(async () => await OnLoginCommandExecuted(), LoginCommandCanExecute)
                .ObservesProperty(() => UserName)
                .ObservesProperty(() => Password);
        }


        private async Task OnLoginCommandExecuted()
        {
            try
            {

                if (string.IsNullOrEmpty(UserName) || string.IsNullOrEmpty(Password))
                {
                    UserDialogs.Instance.Toast("Please enter username and password");
                    return;
                }
                await UserLoginAuthenticationAsync();
            }
            catch (Exception)
            {
               // Exception.Print();
            }

        }


        private async Task UserLoginAuthenticationAsync()
        {
            try
            {
                //UserDialogs.Instance.ShowLoading("Logging in...");
                var result = await _placeFinderService.GetTokenAsync(UserName ?? "", Password ?? "");
               // UserDialogs.Instance.Loading().Dispose();
                if (result.HasError)
                {
                    if (result.ErrorMessage != null)
                    {
                       // UserDialogs.Instance.Alert(result.ErrorMessage);
                    }
                    else
                    {
                        //UserDialogs.Instance.Toast("An error occurred trying to authenticate, please try again");
                    }
                }
                else
                {
                    Settings.PlaceFinderSettings.UserName = UserName;
                    Settings.PlaceFinderSettings.Password = Password;
                    await _navigationService.NavigateAsync("/PlacesPage");
                }
            }
            catch (Exception)
            {
                //UserDialogs.Instance.HideLoading();

                //UserDialogs.Instance.Toast(
                //    "An error was encountered trying to access the backend. Please try again later.");
            }
            finally
            {
               // UserDialogs.Instance.HideLoading();
            }
        }

        private bool LoginCommandCanExecute()
        {
            return true;
            // return !string.IsNullOrWhiteSpace(UserName) && !string.IsNullOrWhiteSpace(Password) && IsNotBusy;
        }

        public virtual void Initialize(INavigationParameters parameters)
        {

        }

        public virtual void OnNavigatedFrom(INavigationParameters parameters)
        {

        }

        public virtual void OnNavigatedTo(INavigationParameters parameters)
        {

        }


    }
}
