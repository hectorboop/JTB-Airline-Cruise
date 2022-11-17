using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class Airline
    {
        public int AirlineID { get; set; }
        public string AirlineName { get; set; }
        public virtual List<Flight> Flights { get; set; }
    }
}