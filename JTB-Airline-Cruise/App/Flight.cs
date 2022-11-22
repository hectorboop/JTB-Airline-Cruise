using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class Flight
    {
        public int FlightID { get; set; }
        public virtual Airline Airline { get; set; }
        public string DepartureCity { get; set; }
        public string DestinationCity { get; set; }
        public DateTime DepartureDate { get; set; }
        public DateTime ReturnDate { get; set; }
        public List<string> FlightType { get; set; }
        public List<string> FlightClass { get; set; }
        public List<float> FlightPrice { get; set; }
        public string Plane { get; set; }

    }
}