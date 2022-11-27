using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace JTB_Airline_Cruise.App
{
    [Serializable]
    public class Flight
    {
        public int FlightID { get; set; }
        public virtual Airline Airline { get; set; }
        public string DepartureCity { get; set; }
        public string DestinationCity { get; set; }
        public DateTime DepartureDate { get; set; }
        public DateTime ReturnDate { get; set; }
        public virtual List<FlightType> FlightType { get; set; }
        public virtual List<FlightClass> FlightClass { get; set; }
        public virtual List<FlightPrice> FlightPrice { get; set; }
        public string Plane { get; set; }

    }

    [Serializable]
    public class FlightType
    {
        public int Id { get; set; }
        public virtual List<Flight> Flights { get; set; }
        public string Name { get; set; }   
    }

    [Serializable]
    public class FlightClass
    {
        public int Id { get; set; }
        public virtual List<Flight> Flights { get; set; }
        public string Name { get; set; }
    }

    [Serializable]
    public class FlightPrice
    {
        public int Id { get; set; }
        public virtual Flight Flight { get; set; }
        public float Value { get; set; }
    }
}