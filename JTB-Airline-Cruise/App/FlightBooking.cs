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
        public int FlightTime { get; set; }
        public string FlightName { get; set; }
        public DateTime Date { get; set; }
        public string PassengerId { get; set; }
        public string PassengerName { get; set; }
        public string SeatNumber { get; set; }
        public string Departure { get; set; }
        public string Destination { get; set; }
        public float BookingCost { get; set; }
    }
}