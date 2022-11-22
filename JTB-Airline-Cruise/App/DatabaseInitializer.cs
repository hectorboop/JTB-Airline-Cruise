using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseInitializer : DropCreateDatabaseAlways<DatabaseContext> 
    {
        protected override void Seed(DatabaseContext context)
        {
            Airline FlyJamaica = new Airline()
            {
                AirlineName = "Fly Jamaica"
            };

            Airline AirJamaica = new Airline()
            {
                AirlineName = "Air Jamaica"
            };

            Flight flight = new Flight()
            {
                Airline = FlyJamaica,
                DepartureCity = "Kingston",
                DepartureDate = DateTime.Now,
                ReturnDate = DateTime.Now,
                DestinationCity = "Montego Bay",
                FlightClass = {"Economy", "Premium Economy", "Business", "First Class"},
                FlightType = {},
                FlightPrice = {},
                Plane = "",
            };

            Cruiseline cruiseline = new Cruiseline()
            {
                CruiselineName = "Sail Jamaica"
            };

            Cruiseline cruiseJamaica = new Cruiseline()
            {
                CruiselineName = "Cruise Jamaica"
            };

            Cruise cruise = new Cruise()
            {
                Cruiseline = cruiseline,
                DeparturePort = "Kingston",
                StartDate = DateTime.Now,
                EndDate = DateTime.Now,
                Ship = "Dark Sister",
                CruiseLength = 0,
                Name = "",
                VisitingPorts = { "Montego Bay", "Port Antonio" },
                CruisePrice = {},
                RoomTypes = {}
            };

            List<Cruiseline> cruiselines = new List<Cruiseline>();
            List<Airline> airlines = new List<Airline>();
            List<Cruise> cruises = new List<Cruise>();
            List<Flight> flights = new List<Flight>();

            airlines.Add(AirJamaica);
            airlines.Add(FlyJamaica);

            cruiselines.Add(cruiseline);
            cruiselines.Add(cruiseJamaica);

            cruises.Add(cruise);
            flights.Add(flight);

            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Cruiseline', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Airline', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Cruise', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Flight', RESEED, 1000);");

            context.Cruiselines.AddRange(cruiselines);
            context.Cruises.AddRange(cruises);
            context.Airlines.AddRange(airlines);
            context.Flights.AddRange(flights);

            base.Seed(context);
        }
    }
}