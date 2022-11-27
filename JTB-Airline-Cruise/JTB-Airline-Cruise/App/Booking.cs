using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class Booking
    {
        public string Id { get; set; }
        public string Category { get; set; }
        public string Departure { get; set; }
        public string Destination { get; set; }
        public string Price { get; set; }
        public string Payment { get; set; }
    }
}