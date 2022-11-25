using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    [Serializable]
    public class FlightBooking
    {
        public int Id { get; set; }
        public int FlightId { get; set; }
        public string PassengerId { get; set; }
    }
}