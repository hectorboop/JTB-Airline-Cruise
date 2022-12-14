using JTB_Airline_Cruise.App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.Entity;
using System.Xml.Serialization;
using System.Threading.Tasks;
using System.Runtime.InteropServices.ComTypes;
using System.Data.Entity.Core.Objects;

namespace JTB_Airline_Cruise.Web_Services
{
    /// <summary>
    /// Summary description for AirlineService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class AirlineService : System.Web.Services.WebService
    {
        private static DatabaseContext _databaseContext = new DatabaseContext();

        [WebMethod]
        public Flight A_Debug_Test()
        {
            return new Flight() { FlightID = 1};
        }

        // Required Methods
        [WebMethod] //Default
        public List<_ResultSet> GetFlights(string city, string destination, string date, string returnDate)
        {
            var sDate = date.Split('/');
            var sDay = sDate[1];
            var sMonth = sDate[0];
            var sYear = sDate[2];

            var departureDate = new DateTime(int.Parse(sYear), int.Parse(sMonth), int.Parse(sDay));
            
            var eDate = returnDate.Split('/');
            var eDay = eDate[1];
            var eMonth = eDate[0];
            var eYear = eDate[2];

            var retDate = new DateTime(int.Parse(eYear), int.Parse(eMonth), int.Parse(eDay));


            List<_ResultSet> _resultSet = new List<_ResultSet>();

            List<Flight> flights = _databaseContext.Flights.Where(f => EntityFunctions.TruncateTime(f.DepartureDate) == departureDate.Date
                                                                    && f.DepartureCity == city && f.DestinationCity == destination).ToList();

            List<Flight> returnFlights = _databaseContext.Flights.Where(f => EntityFunctions.TruncateTime(f.DepartureDate) == retDate.Date
                                                                    && f.DepartureCity == destination && f.DestinationCity == city).ToList();


            List<_Flight> _flights = new List<_Flight>();
            List<_Flight> _returnFlights = new List<_Flight>();

            foreach (Flight flight in flights)
            {
                _flights.Add(new _Flight().Parse(flight));
            }

            foreach (Flight flight in returnFlights)
            {
                _returnFlights.Add(new _Flight().Parse(flight));
            }

            for (int a=0; a<_flights.Count; a++)
            {
                _resultSet.Add(new _ResultSet() { Departure = _flights[0], Return = _returnFlights[0] });

            }

            return _resultSet;
        }

        [WebMethod] //Default
        public void BookFlight(int flightID, string passenger, string passengerId, string date, string seaNumber, float cost)
        {// Modify for two way
            var Date = date.Split('/');
            var Day = Date[1];
            var Month = Date[0];
            var Year = Date[2];

            var departureDate = new DateTime(int.Parse(Year), int.Parse(Month), int.Parse(Day));

            FlightBooking booking = new FlightBooking()
            {
                PassengerId = passengerId,
                PassengerName = passenger,
                Date = departureDate,
                SeatNumber = seaNumber,
                BookingCost = cost,
                FlightId = flightID,
                Departure = _databaseContext.Flights.FirstOrDefault(f => f.FlightID == flightID).DepartureCity,
                Destination = _databaseContext.Flights.FirstOrDefault(f => f.FlightID == flightID).DestinationCity,
            };

            _databaseContext.FlightBookings.Add(booking);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public int GetLastFlightID()
        {
            return _databaseContext.Flights.OrderByDescending(f => f.FlightID).FirstOrDefault().FlightID;
        }

        [WebMethod]
        public void AddFlight(_Flight _flight)
        {
            Flight flight = new Flight()
            {
                Airline = _databaseContext.Airlines.FirstOrDefault(a => a.AirlineName == _flight.AirlineName),
                DepartureCity = _flight.DepartureCity,
                DestinationCity = _flight.DestinationCity,
                DepartureDate = _flight.DepartureDate,
                ReturnDate = _flight.ReturnDate,
                FlightType = new List<FlightType>(),
                FlightClass = new List<FlightClass>(),
                FlightPrice = new List<FlightPrice>(),
                Plane = _flight.Plane
            };

            foreach (string f in _flight.FlightType)
            {
                flight.FlightType.Add(_databaseContext.FlightType.FirstOrDefault(ft => ft.Name == f));
            }

            foreach (string f in _flight.FlightClass)
            {
                flight.FlightClass.Add(_databaseContext.FlightClass.FirstOrDefault(ft => ft.Name == f));
            }

            foreach (float f in _flight.FlightPrice)
            {
                flight.FlightPrice.Add(new FlightPrice() { Value = f});
            }

            _databaseContext.Flights.Add(flight);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<_Flight> AllFlights()
        {
            List<Flight> flights = _databaseContext.Flights.ToList();
            List<_Flight> _flights = new List<_Flight>();

            foreach (Flight flight in flights)
            {
                _flights.Add(new _Flight().Parse(flight));
            }

            return _flights;
        }

        [WebMethod]
        public Flight GetFlightById(int flightId)
        {
            return _databaseContext.Flights.FirstOrDefault(f => f.FlightID == flightId);
        }

        [WebMethod]
        public _Flight GetFlightSingle(int flightId)
        {
            return new _Flight().Parse(_databaseContext.Flights.FirstOrDefault(f => f.FlightID == flightId));
        }

        [WebMethod]
        public void UpdateFlight(_Flight _flight)
        {
            Flight update = GetFlightById(_flight.Id);

            update.Airline = _databaseContext.Airlines.FirstOrDefault(a => a.AirlineName == _flight.AirlineName);
            update.DepartureCity = _flight.DepartureCity;
            update.DestinationCity = _flight.DestinationCity;
            update.DepartureDate = _flight.DepartureDate;
            update.ReturnDate = _flight.ReturnDate;
            update.FlightType = new List<FlightType>();
            update.FlightClass = new List<FlightClass>();
            update.FlightPrice = new List<FlightPrice>();
            update.Plane = _flight.Plane;

            foreach (string f in _flight.FlightType)
            {
                update.FlightType.Add(_databaseContext.FlightType.FirstOrDefault(ft => ft.Name == f));
            }

            foreach (string f in _flight.FlightClass)
            {
                update.FlightClass.Add(_databaseContext.FlightClass.FirstOrDefault(ft => ft.Name == f));
            }

            foreach (float f in _flight.FlightPrice)
            {
                update.FlightPrice.Add(new FlightPrice() { Value = f });
            }

            _databaseContext.Entry(update).State = EntityState.Modified;
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public void DeleteFlight(int flightId)
        {
            Flight flight = GetFlightById(flightId);

            _databaseContext.Flights.Remove(flight);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public void AddAirline(string airlineName)
        {
            Airline airline = new Airline()
            {
               AirlineName = airlineName
            };

            _databaseContext.Airlines.Add(airline);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<_Airline> GetAirlines()
        {
            List<_Airline> _airlines = new List<_Airline>();

            var airlines = _databaseContext.Airlines.ToList();

            foreach (var airline in airlines)
            {
                _airlines.Add(new _Airline().Parse(airline));
            }

            return _airlines;
        }

        [WebMethod]
        public int GetLastAirlineID()
        {
            return _databaseContext.Airlines.OrderByDescending(a => a.AirlineID).FirstOrDefault().AirlineID;
        }

        [WebMethod]
        public Boolean DeleteAirline(int airlineId)
        {
            Airline airline = _databaseContext.Airlines.FirstOrDefault(a => a.AirlineID == airlineId);

            // If there are flights attached to this airline
            if (airline.Flights != null || airline.Flights.Any())
            {
                return false;
            } else
            {
                _databaseContext.Airlines.Remove(airline);
                _databaseContext.SaveChanges();

                return true;
            }
        }

        [WebMethod]
        public void UpdateAirline(int airlineId, string airlineName)
        {
            Airline update = _databaseContext.Airlines.FirstOrDefault(a => a.AirlineID == airlineId);

            update.AirlineName = airlineName;

            _databaseContext.Entry(update).State = EntityState.Modified;
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<FlightBooking> AllBookings()
        {
            return _databaseContext.FlightBookings.ToList();
        }

        [WebMethod]
        public List<FlightBooking> GetBookings(string passengerId)
        {
            return _databaseContext.FlightBookings.Where(b => b.PassengerId == passengerId).ToList();
        }

        [WebMethod]
        public int GetBookingCount()
        {
            return _databaseContext.FlightBookings.Count(); 
        }

        [WebMethod]
        public int GetFlightCount()
        {
            return _databaseContext.Flights.Count();
        }

        [WebMethod]
        public float GetFlightRevenue()
        {

            float revenue = 0;

            var flights = _databaseContext.FlightBookings.ToList();
            if (flights != null)
            {
                foreach (var flight in flights)
                {
                    revenue = + flight.BookingCost;
                }
            }

            return revenue;
        }

        [WebMethod]
        public List<FlightBooking> GetRecentBookings()
        {
            return _databaseContext.FlightBookings.OrderByDescending(f => f.Id).Take(5).ToList();
        }
    }
}
