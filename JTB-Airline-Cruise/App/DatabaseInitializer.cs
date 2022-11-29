using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseInitializer : DropCreateDatabaseAlways<DatabaseContext> 
    {
        protected override void Seed(DatabaseContext context)
        {
            // Populate Cities Table
            IronXL.WorkBook workbook = IronXL.WorkBook.Load(@"C:\\Users\\rushw\\source\\repos\\JTB-Airline-Cruise\\JTB-Airline-Cruise\\Assets\\worldcities.xlsx");
            IronXL.WorkSheet sheet = workbook.WorkSheets.First();

            List<City> Cities = new List<City>();
            int z = 2;

            foreach (var city in sheet["A2:A5000"])
            {
                string country = sheet["E" + z].StringValue;

                Cities.Add(new City() { Name = city.Text, Country = country });
                
                z++;
            }

            context.City.AddRange(Cities);

            City Kingston = context.City.FirstOrDefault(c => c.Name == "Kingston" && c.Country == "Jamaica");
            City MontegoBay = context.City.FirstOrDefault(c => c.Name == "Montego Bay" && c.Country == "Jamaica");

            Airline CaribbeanAirlines = new Airline()
            {
                AirlineName = "Caribbean Airlines"
            };

            Airline AmericanAirlines = new Airline()
            {
                AirlineName = "American Airlines"
            };

            RoomType interior = new RoomType() { Name = "Interior" };
            RoomType oceanView = new RoomType() { Name = "Ocean View" };
            RoomType balcony = new RoomType() { Name = "Balcony" };
            RoomType suite = new RoomType() { Name = "Suite" };

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

            Flight flightA = new Flight()
            {
                Airline = AmericanAirlines,
                DepartureCity = "Kingston, Jamaica",
                DepartureDate = DateTime.Now,
                ReturnDate = DateTime.Now.AddDays(2),
                DestinationCity = "New York, United States",
                FlightClass = new List<FlightClass> {economy, premiumEconomy, business, firstClass},
                FlightType = new List<FlightType> {oneWay, returning},
                FlightPrice = new List<FlightPrice> {flightPriceA, flightPriceB, flightPriceC, flightPriceD },
                Plane = "Airbus A30"
            };

            Flight flightB = new Flight()
            {
                Airline = AmericanAirlines,
                DepartureCity = "New York, United States",
                DepartureDate = DateTime.Now.AddDays(1),
                ReturnDate = DateTime.Now.AddDays(3),
                DestinationCity = "Montego Bay, Jamaica",
                FlightClass = new List<FlightClass> { economy, premiumEconomy, business, firstClass },
                FlightType = new List<FlightType> { oneWay, returning },
                FlightPrice = new List<FlightPrice> { flightPriceA, flightPriceB, flightPriceC, flightPriceD },
                Plane = "Boeing 747"
            };

            Flight flightC = new Flight()
            {
                Airline = CaribbeanAirlines,
                DepartureCity = "Kingston, Jamaica",
                DepartureDate = DateTime.Now,
                ReturnDate = DateTime.Now.AddDays(2),
                DestinationCity = "Miami, United States",
                FlightClass = new List<FlightClass> { economy, premiumEconomy, business, firstClass },
                FlightType = new List<FlightType> { oneWay, returning },
                FlightPrice = new List<FlightPrice> { flightPriceA, flightPriceB, flightPriceC, flightPriceD },
                Plane = "Boeing 737 Max"
            };

            Flight flightD = new Flight()
            {
                Airline = CaribbeanAirlines,
                DepartureCity = "Miami, United States",
                DepartureDate = DateTime.Now.AddDays(1),
                ReturnDate = DateTime.Now.AddDays(3),
                DestinationCity = "Montego Bay, Jamaica",
                FlightClass = new List<FlightClass> { economy, premiumEconomy, business, firstClass },
                FlightType = new List<FlightType> { oneWay, returning },
                FlightPrice = new List<FlightPrice> { flightPriceA, flightPriceB, flightPriceC, flightPriceD },
                Plane = "Boeing 767"
            };

            Cruiseline cruiseline = new Cruiseline()
            {
                CruiselineName = "Holland America Line"
            };

            Cruiseline cruiselineB = new Cruiseline()
            {
                CruiselineName = "Emerald Cruises"
            };

            VisitingPort portA = new VisitingPort() { Name = "Nassau, The Bahamas" };
            VisitingPort portB = new VisitingPort() { Name = "Port-of-Spain, Trinidad" };
            VisitingPort portC = new VisitingPort() { Name = "Havana, Cuba" };
            VisitingPort portD = new VisitingPort() { Name = "Florida, United States" };
            
            CruisePrice priceA = new CruisePrice() { Price = 400f };
            CruisePrice priceB = new CruisePrice() { Price = 450f };
            CruisePrice priceC = new CruisePrice() { Price = 600f };
            CruisePrice priceD = new CruisePrice() { Price = 1000f };

            Cruise cruiseA = new Cruise()
            {
                Cruiseline = cruiseline,
                DeparturePort = "Kingston, Jamaica",
                StartDate = DateTime.Now,
                EndDate = DateTime.Now.AddDays(5),
                Ship = "Dark Sister",
                CruiseLength = 5,
                Name = "Bahamas 5 Night Cruise",
                VisitingPorts = new List<VisitingPort> { portA },
                CruisePrice = new List<CruisePrice> { priceA, priceB, priceC, priceD },
                RoomTypes = new List<RoomType> { interior, oceanView, balcony, suite }
            };

            Cruise cruiseB = new Cruise()
            {
                Cruiseline = cruiseline,
                DeparturePort = "Kingston, Jamaica",
                StartDate = DateTime.Now,
                EndDate = DateTime.Now.AddDays(8),
                Ship = "Summer Rose",
                CruiseLength = 5,
                Name = "Caribbean 8 Night Cruise",
                VisitingPorts = new List<VisitingPort> { portB },
                CruisePrice = new List<CruisePrice> { priceA, priceB, priceC, priceD },
                RoomTypes = new List<RoomType> { interior, oceanView, balcony, suite }
            };

            Cruise cruiseC = new Cruise()
            {
                Cruiseline = cruiselineB,
                DeparturePort = "Montego Bay, Jamaica",
                StartDate = DateTime.Now,
                EndDate = DateTime.Now.AddDays(3),
                Ship = "Evergift",
                CruiseLength = 5,
                Name = "Cuba 3 Night Cruise",
                VisitingPorts = new List<VisitingPort> { portC },
                CruisePrice = new List<CruisePrice> { priceA, priceB, priceC, priceD },
                RoomTypes = new List<RoomType> { interior, oceanView, balcony, suite }
            };

            Cruise cruiseD = new Cruise()
            {
                Cruiseline = cruiselineB,
                DeparturePort = "Kingston, Jamaica",
                StartDate = DateTime.Now,
                EndDate = DateTime.Now.AddDays(4),
                Ship = "Virgin Queen Anne",
                CruiseLength = 5,
                Name = "Stateside 4 Night Cruise",
                VisitingPorts = new List<VisitingPort> { portD },
                CruisePrice = new List<CruisePrice> { priceA, priceB, priceC, priceD },
                RoomTypes = new List<RoomType> { interior, oceanView, balcony, suite }
            };

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
            roomTypes.Add(interior);
            roomTypes.Add(oceanView);
            roomTypes.Add(balcony);
            roomTypes.Add(suite);
            cruisePrices.Add(priceA);

            airlines.Add(AmericanAirlines);
            airlines.Add(CaribbeanAirlines);

            cruiselines.Add(cruiseline);
            cruiselines.Add(cruiselineB);

            cruises.Add(cruiseA);
            cruises.Add(cruiseB);
            cruises.Add(cruiseC);
            cruises.Add(cruiseD);
            flights.Add(flightA);
            flights.Add(flightB);
            flights.Add(flightC);
            flights.Add(flightD);

            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('City', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Cruiseline', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Airline', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Cruise', RESEED, 1000);");
            context.Database.ExecuteSqlCommand("DBCC CHECKIDENT('Flight', RESEED, 1000);");

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