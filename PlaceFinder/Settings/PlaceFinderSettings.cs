using Xamarin.Essentials;

namespace PlaceFinder.Settings
{
    public class PlaceFinderSettings
    {
        private readonly IPreferencesWrapper _preferencesWrapper;

        public PlaceFinderSettings(IPreferencesWrapper preferencesWrapper)
        {
            _preferencesWrapper = preferencesWrapper;
        }

        public string BackendUrl
        {
            get => _preferencesWrapper.Get("BackendUrl", "https://staging.api.eos.kerridgecs.online");
            set => _preferencesWrapper.Set("BackendUrl", value);
        }

        public string TokenUrl
        {
            get => _preferencesWrapper.Get("TokenUrl", "https://staging.identity.eos.kerridgecs.online");
            set => _preferencesWrapper.Set("TokenUrl", value);
        }

        public string UserName
        {
            get => _preferencesWrapper.Get("Username", "94eb850d-448f-48ef-a085-5fee4807606e.apps.kerridgecs.com");
            set => _preferencesWrapper.Set("Username", value);
        }

        public string Password
        {
            get => _preferencesWrapper.Get("Password", "b609f130-2d13-43d4-93df-f8ab9f1cafde");
            set => _preferencesWrapper.Set("Password", value);
        }
    }
}
