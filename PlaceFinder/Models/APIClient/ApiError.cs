namespace PlaceFinder.Models.APIClient
{
    public class ApiError
    {
        public int StatusCode { get; }
        public string ReasonPhrase { get; }

        public ApiError(int statusCode, string reasonPhrase)
        {
            StatusCode = statusCode;
            ReasonPhrase = reasonPhrase;

        }
    }
}
