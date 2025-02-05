﻿using System.Collections.Generic;

namespace PlaceFinder.Models
{
    public class PlaceDetails
    {
        public LocationInfo Data { get; set; }
        public Meta Meta { get; set; }
    }

    public class AddressComponent
    {
        public string ShortName { get; set; }
        public string LongName { get; set; }
        public List<int> Types { get; set; }
    }

    public class Photo
    {
        public string PhotoId { get; set; }
        public int Height { get; set; }
        public int Width { get; set; }
    }

    public class LocationInfo
    {
        public List<AddressComponent> AddressComponents { get; set; }
        public string FormattedAddress { get; set; }
        public string Url { get; set; }
        public int UtcOffset { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public string Name { get; set; }
        public List<Photo> Photos { get; set; }
        public string PlaceId { get; set; }
        public List<int> Types { get; set; }
    }

}
