using JTB_Airline_Cruise.App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.Entity;

namespace JTB_Airline_Cruise.Web_Services
{
    /// <summary>
    /// Summary description for AirlineService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AirlineService : System.Web.Services.WebService
    {
        private static DatabaseContext _databaseContext = new DatabaseContext();

        // Required Methods
        [WebMethod] //Default
        public List<Flight> GetFlights(string Country, string City, string Date)
        {
            List<Flight> flights = new List<Flight>();

            // Should return flights
            return flights;
        }

        [WebMethod] //Default
        public void BookFlight(string FlightID, string Name, string DOB)
        {

        }

        [WebMethod]
        public int GetLastFlightID()
        {
            return _databaseContext.Flights.OrderByDescending(f => f.FlightID).FirstOrDefault().FlightID;
        }

        [WebMethod]
        public void AddFlight(Airline airline, string departureCity, string destinationCity, DateTime departureDate, 
                                DateTime returnDate, int travellers, string flightType, string flightClass, float flightPrice)
        {
            Flight flight = new Flight()
            {
                Airline = airline,
                DepartureCity = departureCity,
                DestinationCity = destinationCity,
                DepartureDate = departureDate,
                ReturnDate = returnDate,
                Travelers = travellers,
                FlightType = flightType,
                FlightClass = flightType,
                FlightPrice = flightPrice
            };

            _databaseContext.Flights.Add(flight);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<Flight> AllFlights()
        {
            return _databaseContext.Flights.ToList();
        }

        [WebMethod]
        public Flight GetFlightById(int flightId)
        {
            return _databaseContext.Flights.FirstOrDefault(f => f.FlightID == flightId);
        }

        [WebMethod]
        public void UpdateFlight(int flightId, Airline airline, string departureCity, string destinationCity, DateTime departureDate,
                                DateTime returnDate, int travellers, string flightType, string flightClass, float flightPrice)
        {
            Flight update = GetFlightById(flightId);

            update.Airline = airline;
            update.DepartureCity = departureCity;
            update.DestinationCity = destinationCity;
            update.DepartureDate = departureDate;
            update.ReturnDate = returnDate;
            update.Travelers = travellers;
            update.FlightType = flightType;
            update.FlightClass = flightClass;
            update.FlightPrice = flightPrice;
            
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
        public List<Airline> GetAirlines()
        {
            return _databaseContext.Airlines.ToList();
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

    }
}
