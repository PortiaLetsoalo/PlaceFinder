using Xamarin.Essentials;

namespace PlaceFinder.Settings
{
    public class PlaceFinderSettings
    {
        public static string BackendUrl
        {
            get => Preferences.Get("BackendUrl", string.Empty);
            set => Preferences.Set("BackendUrl", value);
        }

        public static string UserName
        {
            get => Preferences.Get("Username", "94eb850d-448f-48ef-a085-5fee4807606e.apps.kerridgecs.com");
            set => Preferences.Set("Username", value);
        }

        public static string Password
        {
            get => Preferences.Get("Password", "b609f130-2d13-43d4-93df-f8ab9f1cafde");
            set => Preferences.Set("Password", value);
        }
    }
}
