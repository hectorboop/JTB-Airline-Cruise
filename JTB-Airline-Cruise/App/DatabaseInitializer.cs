using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseInitializer : DropCreateDatabaseAlways<DatabaseContext> 
    {
        protected override void Seed(DatabaseContext context)
        {
            City cityA = new City() { Name = "London", Country = "United Kingdom" };            
            City cityB = new City() { Name = "Miami", Country = "United States" };            
            City cityC = new City() { Name = "New York", Country = "United States" };            
            City cityD = new City() { Name = "Havana", Country = "Cuba" };            
            City cityE = new City() { Name = "Nassau", Country = "The Bahamas" };            

            City Kingston = new City()
            {
                Name = "Kingston",
                Country = "Jamaica"
            };

            City MontegoBay = new City()
            {
                Name = "Montego Bay",
                Country = "Jamaica"
            };

            Airline FlyJamaica = new Airline()
            {
                AirlineName = "Fly Jamaica"
            };

            Airline AirJamaica = new Airline()
            {
                AirlineName = "Air Jamaica"
            };

            FlightClass economy = new FlightClass(){ Name = "Economy" };
            FlightClass premiumEconomy = new FlightClass(){ Name = "Premium Economy" };
            FlightClass business = new FlightClass(){ Name = "Business" };
            FlightClass firstClass = new FlightClass(){ Name = "First Class" };

            FlightType oneWay = new FlightType() { Name = "One-Way" };
            FlightType returning = new FlightType() { Name = "Round-Trip" };
            FlightType stopOver = new FlightType() { Name = "Multi-City" };

            FlightPrice flightPriceA = new FlightPrice() { Value = 200f };
            FlightPrice flightPriceB = new FlightPrice() { Value = 300f };
            FlightPrice flightPriceC = new FlightPrice() { Value = 400f };
            FlightPrice flightPriceD = new FlightPrice() { Value = 500f };

            Flight flight = new Flight()
            {
                Airline = FlyJamaica,
                DepartureCity = "Kingston",
                DepartureDate = DateTime.Now,
                ReturnDate = DateTime.Now,
                DestinationCity = "Montego Bay",
                FlightClass = new List<FlightClass> {economy, premiumEconomy, business, firstClass},
                FlightType = new List<FlightType> {oneWay, returning},
                FlightPrice = new List<FlightPrice> {flightPriceA, flightPriceB, flightPriceC, flightPriceD },
                Plane = "Boeing 737 Max"
            };

            Cruiseline cruiseline = new Cruiseline()
            {
                CruiselineName = "Sail Jamaica"
            };

            Cruiseline cruiseJamaica = new Cruiseline()
            {
                CruiselineName = "Cruise Jamaica"
            };

            VisitingPort portA = new VisitingPort() { Name = "Montego Bay" };
            RoomType roomA = new RoomType() { Name = "Deck" };
            CruisePrice priceA = new CruisePrice() { Price = 400f };

            Cruise cruise = new Cruise()
            {
                Cruiseline = cruiseline,
                DeparturePort = "Kingston",
                StartDate = DateTime.Now,
                EndDate = DateTime.Now.AddDays(5),
                Ship = "Dark Sister",
                CruiseLength = 5,
                Name = "",
                VisitingPorts = new List<VisitingPort> { portA },
                CruisePrice = new List<CruisePrice> { priceA },
                RoomTypes = new List<RoomType> { roomA }
            };

            List<City> cities = new List<City>();
            List<Cruiseline> cruiselines = new List<Cruiseline>();
            List<Airline> airlines = new List<Airline>();
            List<Cruise> cruises = new List<Cruise>();
            List<Flight> flights = new List<Flight>();

            List<FlightType> fTypes = new List<FlightType>();
            List<FlightClass> fClasses = new List<FlightClass>();
            List<FlightPrice> fPrices = new List<FlightPrice>();

            List<VisitingPort> visitingPorts = new List<VisitingPort>();
            List<RoomType> roomTypes = new List<RoomType>();
            List<CruisePrice> cruisePrices = new List<CruisePrice>();

            fTypes.Add(oneWay);
            fTypes.Add(returning);
            fTypes.Add(stopOver);

            fClasses.Add(economy);
            fClasses.Add(premiumEconomy);
            fClasses.Add(business);
            fClasses.Add(firstClass);

            fPrices.Add(flightPriceA);
            fPrices.Add(flightPriceB);
            fPrices.Add(flightPriceC);
            fPrices.Add(flightPriceD);

            visitingPorts.Add(portA);
            roomTypes.Add(roomA);
            cruisePrices.Add(priceA);

            cities.Add(Kingston);
            cities.Add(MontegoBay);

            cities.Add(cityA);
            cities.Add(cityB);
            cities.Add(cityC);
            cities.Add(cityD);
            cities.Add(cityE);

            airlines.Add(AirJamaica);
            airlines.Add(FlyJamaica);

            cruiselines.Add(cruiseline);
            cruiselines.Add(cruiseJamaica);

            cruises.Add(cruise);
            flights.Add(flight);

            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('City', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Cruiseline', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Airline', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Cruise', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Flight', RESEED, 1000);");

            context.City.AddRange(cities);
            context.Cruiselines.AddRange(cruiselines);
            context.Cruises.AddRange(cruises);
            context.Airlines.AddRange(airlines);
            context.Flights.AddRange(flights);

            context.FlightType.AddRange(fTypes);
            context.FlightClass.AddRange(fClasses);
            context.FlightPrice.AddRange(fPrices);

            context.VisitingPort.AddRange(visitingPorts);
            context.RoomType.AddRange(roomTypes);
            context.CruisePrice.AddRange(cruisePrices);

            base.Seed(context);
        }
    }
}