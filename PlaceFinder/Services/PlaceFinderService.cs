using Newtonsoft.Json;
using PlaceFinder.Models;
using PlaceFinder.Models.APIClient;
using PlaceFinder.Settings;
using RestSharp;
using System.Threading.Tasks;

namespace PlaceFinder.Services
{
    public class PlaceFinderService : IPlaceFinderService
    {
        public string Token { get; set; }
        public string BackendUrl { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        private readonly PlaceFinderSettings _settings;

        public PlaceFinderService(IPreferencesWrapper preferencesWrapper)
        {
            _settings = new PlaceFinderSettings(preferencesWrapper);
            BackendUrl = _settings.BackendUrl;
            UserName = _settings.UserName;
            Password = _settings.Password;
        }

        public async Task<ApiResponse<Token>> GetTokenAsync()
        {
            var options = new RestClientOptions("https://staging.identity.eos.kerridgecs.online");
            var client = new RestClient(options);
            var request = new RestRequest("/connect/token", Method.Post);
            request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
            request.AddParameter("grant_type", "client_credentials");
            request.AddParameter("client_secret", Password);
            request.AddParameter("client_id", UserName);
            request.AddParameter("scope", "eos.common.fullaccess");
            RestResponse response = await client.ExecuteAsync(request);
            if (response.IsSuccessful)
            {
                var token = JsonConvert.DeserializeObject<Token>(response.Content);
                this.Token = token?.AccessToken;
                return new ApiResponse<Token>(token, null);
            }
            else
            {
                return new ApiResponse<Token>(null, response.ErrorMessage);
            }
        }

        public async Task<PlaceDetails> GetPlaceAsync(string placeId)
        {
            var options = new RestClientOptions(BackendUrl);
            var client = new RestClient(options);
            var request = new RestRequest($"/location/api/v1/locations/places/{placeId}", Method.Get);
            request.AddHeader("Authorization", $"Bearer {Token}");
            RestResponse response = await client.ExecuteAsync(request);
            if (response.IsSuccessful)
            {
                var placeDetails = JsonConvert.DeserializeObject<PlaceDetails>(response.Content);
                return placeDetails;
            }
            else
            {
                return new PlaceDetails();
            }
        }

        public async Task<PlaceResponse> GetPlacesAsync(string criteria)
        {
            var options = new RestClientOptions(BackendUrl);
            var client = new RestClient(options);
            var request = new RestRequest("/location/api/v1/locations/places", Method.Get);
            request.AddHeader("Authorization", $"Bearer {Token}");
            request.AddParameter("criteria", criteria);
            RestResponse response = await client.ExecuteAsync(request);
            if (response.IsSuccessful)
            {
                var apiResponse = JsonConvert.DeserializeObject<PlaceResponse>(response.Content);
                return apiResponse;
            }
            else
            {
                return new PlaceResponse();
            }
        }
    }
}