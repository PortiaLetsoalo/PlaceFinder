
namespace PlaceFinder.Models.APIClient
{
    public class ApiResponse<T>
    {
        public T Value { get; set; }
        public string ErrorMessage { get; set; }


        public ApiResponse(T value, string errorMessage)
        {
            Value = value;
            ErrorMessage = errorMessage;
        }

        public bool HasError => ErrorMessage != null;
    }

}


//using DryIoc;
//using System;
//using System.Collections.Generic;
//using System.Text;

//namespace PlaceFinder.Models.APIClient
//{
//    public class ApiResponse<T>
//    {
//        public ApiResponse(T result, ApiError error)
//        {
//            Result = result;
//            Error = error;
//        }

//        public T Result { get; }

//        /// <summary>
//        ///     Sets HasError property to false if the Error property is not null
//        /// </summary>
//        public bool HasError => Error != null;

//        public ApiError Error { get; }

//    }

//}
