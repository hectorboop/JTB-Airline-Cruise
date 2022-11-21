using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class CruiseBooking
    {
        public int Id { get; set; }
        public string RoomNumber { get; set; }
        public string Name { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public string PassengerId { get; set; }
    }
}