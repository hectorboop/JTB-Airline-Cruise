using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace JTB_Airline_Cruise.App
{
    [Serializable]
    public class Record
    {
        public int Id { get; set; }
        public string Name { get; set; }

    }

    [Serializable]
    public class _Flight : Record
    {
        public string AirlineName { get; set; }
        public string DepartureCity { get; set; }
        public string DestinationCity { get; set; }
        public DateTime DepartureDate { get; set; }
        public DateTime ReturnDate { get; set; }
        public List<string> FlightType { get; set; }
        public List<string> FlightClass { get; set; }
        public List<float> FlightPrice { get; set; }
        public string Plane { get; set; }

        public _Flight Parse(Flight flight)
        {
            _Flight _flight = new _Flight()
            {
                Id = flight.FlightID,
                AirlineName = flight.Airline.AirlineName,
                DepartureCity = flight.DepartureCity,
                DestinationCity = flight.DestinationCity,
                DepartureDate = flight.DepartureDate,
                ReturnDate = flight.ReturnDate,
                FlightClass = new List<string>(),
                FlightType = new List<string>(),
                FlightPrice = new List<float>(),
                Plane = flight.Plane
            };

            foreach(FlightClass flightClass in flight.FlightClass)
            {
                _flight.FlightClass.Add(flightClass.Name);
            }

            foreach(FlightType flightType in flight.FlightType)
            {
                _flight.FlightType.Add(flightType.Name);
            }

            foreach(FlightPrice flightPrice in flight.FlightPrice)
            {
                _flight.FlightPrice.Add(flightPrice.Value);
            }

            _flight.Name = flight.Airline.AirlineName + " Flight #" + flight.FlightID.ToString();

            return _flight;
        }
    }

    [Serializable]
    public class _Cruise : Record
    {
        public string Cruiseline { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Ship { get; set; }
        public int CruiseLength { get; set; }
        public string DeparturePort { get; set; }
        public List<string> VisitingPorts { get; set; }
        public List<float> CruisePrice { get; set; }
        public List<string> RoomTypes { get; set; }

        public _Cruise Parse(Cruise cruise)
        {
            _Cruise _cruise = new _Cruise()
            {
                Id = cruise.CruiseID,
                Name = cruise.Name,
                Cruiseline = cruise.Cruiseline.CruiselineName,
                StartDate = cruise.StartDate,
                EndDate = cruise.EndDate,
                Ship = cruise.Ship,
                CruiseLength = cruise.CruiseLength,
                DeparturePort = cruise.DeparturePort,
                VisitingPorts = new List<string>(),
                CruisePrice = new List<float> (),
                RoomTypes = new List<string>()
            };

            foreach (VisitingPort vp in cruise.VisitingPorts)
            {
                _cruise.VisitingPorts.Add(vp.Name);
            }

            foreach (CruisePrice cp in cruise.CruisePrice)
            {
                _cruise.CruisePrice.Add(cp.Price);
            }

            foreach (RoomType rt in cruise.RoomTypes)
            {
                _cruise.RoomTypes.Add(rt.Name);
            }

            return _cruise;
        }
    }

    [Serializable]
    public class _Cruiseline : Record
    {
        //public List<string> Cruises { get; set; }

        public _Cruiseline Parse(Cruiseline cruiseline)
        {
            _Cruiseline _cruiseline = new _Cruiseline()
            {
                Id = cruiseline.CruiselineID,
                Name = cruiseline.CruiselineName
            };

            return _cruiseline; 
        }
    }

    [Serializable]
    public class _Airline : Record
    {
        //public List<string> Flights { get; set; }

        public _Airline Parse(Airline airline)
        {
            _Airline _airline = new _Airline()
            {
                Id = airline.AirlineID,
                Name = airline.AirlineName
            };

            return _airline;
        }
    }

}