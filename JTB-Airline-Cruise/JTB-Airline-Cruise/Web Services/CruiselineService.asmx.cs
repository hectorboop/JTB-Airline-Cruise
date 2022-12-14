using JTB_Airline_Cruise.App;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Services;
using System.Xml.Linq;

namespace JTB_Airline_Cruise.Web_Services
{
    /// <summary>
    /// Summary description for CruiselineService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CruiselineService : System.Web.Services.WebService
    {
        private static DatabaseContext _databaseContext = new DatabaseContext();

        // Required Methods
        [WebMethod] //Default
        public List<Cruise> GetCruises(DateTime checkInDate, DateTime checkOutDate)
        {
            List<Cruise> cruises = new List<Cruise>();

            // Should return room_types
            return cruises;
        }

        [WebMethod] //Default
        public void BookCruise(string roomType)
        {

        }

        [WebMethod]
        public int GetLastCruiseID()
        {
            return _databaseContext.Cruises.OrderByDescending(c => c.CruiseID).FirstOrDefault().CruiseID;
        }

        [WebMethod]
        public void AddCruise(_Cruise _cruise)
        {
            Cruise cruise = new Cruise()
            {
                Name = _cruise.Name,
                StartDate = _cruise.StartDate,
                EndDate = _cruise.EndDate,
                Cruiseline = _databaseContext.Cruiselines.FirstOrDefault(c => c.CruiselineName == _cruise.Cruiseline),
                Ship = _cruise.Ship,
                CruiseLength = _cruise.CruiseLength,
                DeparturePort = _cruise.DeparturePort,
                VisitingPorts = new List<VisitingPort>(),
                CruisePrice = new List<CruisePrice>(),
                RoomTypes = new List<RoomType>()
            };

            foreach (string c in _cruise.VisitingPorts)
            {
                cruise.VisitingPorts.Add(new VisitingPort() { Name = c });
            }

            foreach (float c in _cruise.CruisePrice)
            {
                cruise.CruisePrice.Add(new CruisePrice() {  Price = c });
            }

            foreach (string c in _cruise.RoomTypes)
            {
                cruise.RoomTypes.Add(new RoomType() { Name = c });
            }

            _databaseContext.Cruises.Add(cruise);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<Cruise> AllCruises()
        {
            return _databaseContext.Cruises.ToList();
        }

        [WebMethod]
        public Cruise GetCruiseById(int cruiseId)
        {
            return _databaseContext.Cruises.FirstOrDefault(c => c.CruiseID == cruiseId);
        }

        [WebMethod]
        public void UpdateCruise(_Cruise _cruise)
        {
            Cruise update = GetCruiseById(_cruise.Id);

            update.Name = _cruise.Name;
            update.StartDate = _cruise.StartDate;
            update.EndDate = _cruise.EndDate;
            update.Cruiseline = _databaseContext.Cruiselines.FirstOrDefault(c => c.CruiselineName == _cruise.Cruiseline);
            update.Ship = _cruise.Ship;
            update.CruiseLength = _cruise.CruiseLength;
            update.DeparturePort = _cruise.DeparturePort;
            update.VisitingPorts = new List<VisitingPort>();
            update.CruisePrice = new List<CruisePrice>();
            update.RoomTypes = new List<RoomType>();

            foreach (string c in _cruise.VisitingPorts)
            {
                update.VisitingPorts.Add(new VisitingPort() { Name = c });
            }

            foreach (float c in _cruise.CruisePrice)
            {
                update.CruisePrice.Add(new CruisePrice() { Price = c });
            }

            foreach (string c in _cruise.RoomTypes)
            {
                update.RoomTypes.Add(new RoomType() { Name = c });
            }

            _databaseContext.Entry(update).State = EntityState.Modified;
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public void DeleteCruise(int cruiseId)
        {
            Cruise cruise = GetCruiseById(cruiseId);

            _databaseContext.Cruises.Remove(cruise);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public void AddCruiseline(string cruiselineName)
        {
            Cruiseline cruiseline = new Cruiseline()
            {
                CruiselineName = cruiselineName
            };

            _databaseContext.Cruiselines.Add(cruiseline);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<Cruiseline> GetCruiselines()
        {
            return _databaseContext.Cruiselines.ToList();
        }

        [WebMethod]
        public Boolean DeleteCruiseline(int cruiselineId)
        {
            Cruiseline cruiseline = _databaseContext.Cruiselines.FirstOrDefault(c => c.CruiselineID == cruiselineId);

            // If there are Cruises attached to this airline
            if (cruiseline.Cruises != null || cruiseline.Cruises.Any())
            {
                return false;
            }
            else
            {
                _databaseContext.Cruiselines.Remove(cruiseline);
                _databaseContext.SaveChanges();

                return true;
            }
        }

        [WebMethod]
        public void UpdateCruiseline(int cruiselineId, string cruiselineName)
        {
            Cruiseline update = _databaseContext.Cruiselines.FirstOrDefault(a => a.CruiselineID == cruiselineId);

            update.CruiselineName = cruiselineName;

            _databaseContext.Entry(update).State = EntityState.Modified;
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<CruiseBooking> AllBookings()
        {
            return _databaseContext.CruiseBookings.ToList();
        }

        [WebMethod]
        public List<CruiseBooking> GetBookings(string passengerId)
        {
            return _databaseContext.CruiseBookings.Where(b => b.PassengerId == passengerId).ToList();
        }

        [WebMethod]
        public int GetBookingCount()
        {
            return _databaseContext.CruiseBookings.Count();
        }

        [WebMethod]
        public int GetCruiseCount()
        {
            return _databaseContext.Cruises.Count();
        }

        [WebMethod]
        public float GetCruiseRevenue()
        {
            float revenue = 0;

            var cruises = _databaseContext.CruiseBookings.ToList();
            if (cruises != null)
            {
                foreach (var cruise in cruises)
                {
                    revenue = + cruise.BookingCost;
                }
            }

            return revenue;
        }

        [WebMethod]
        public List<CruiseBooking> GetRecentBookings()
        {
            //Use AsNoTracking & ToListAsync when loading many records
            return _databaseContext.CruiseBookings.OrderByDescending(b => b.Id).Take(5).ToList();
        }
    }
}
