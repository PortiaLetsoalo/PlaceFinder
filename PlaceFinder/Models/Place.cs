using System;
using System.Collections.Generic;

namespace PlaceFinder.Models
{
    public class Place
    {
        public string PlaceId { get; set; }
        public string Description { get; set; }
        public string MainText { get; set; }
        public List<Term> terms { get; set; }
        public List<int> types { get; set; }
    }

    public class Term
    {
        public string Value { get; set; }
        public string Offset { get; set; }
    }

    public class Meta
    {
        public int PageNumber { get; set; }
        public int PageSize { get; set; }
        public int TotalCount { get; set; }
        public int TotalPages { get; set; }
        public string Message { get; set; }
    }

    public class PlaceResponse
    {
        public List<Place> Data { get; set; }
        public Meta Meta { get; set; }
    }

    public class PlaceInput
    {
        public String Criteria { get; set; }
    }

}
