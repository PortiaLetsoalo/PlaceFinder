using PlaceFinder.Models;
using PlaceFinder.Models.APIClient;
using System.Threading.Tasks;

namespace PlaceFinder.Services
{
    public interface IPlaceFinderService
    {
        Task<ApiResponse<Token>> GetTokenAsync();
        Task<PlaceDetails> GetPlaceAsync(string placeId);
        Task<PlaceResponse> GetPlacesAsync(string criteria);
    }
}
