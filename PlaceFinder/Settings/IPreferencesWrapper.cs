namespace PlaceFinder.Settings
{
    public interface IPreferencesWrapper
    {
        string Get(string key, string defaultValue);
        void Set(string key, string value);
    }
}
