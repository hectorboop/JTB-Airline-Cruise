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
        public void AddCruise(Cruiseline cruiseline, string departurePort, string visitingPorts, DateTime startDate,
                                DateTime endDate, string region, string ship, float cruisePrice)
        {
            Cruise cruise = new Cruise()
            {
                Name = "",
                StartDate = startDate,
                EndDate = endDate,
                Cruiseline = cruiseline,
                Region = region,
                Ship = ship,
                CruiseLength = 0,
                DeparturePort = departurePort,
                VisitingPorts = visitingPorts,
                CruisePrice = 0f
    };

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
        public void UpdateCruise(int cruiseId, Cruiseline cruiseline, string departurePort, string visitingPorts, DateTime startDate,
                                DateTime endDate, string region, string ship, float cruisePrice)
        {
            Cruise update = GetCruiseById(cruiseId);

            update.Name = "";
            update.StartDate = startDate;
            update.EndDate = endDate;
            update.Cruiseline = cruiseline;
            update.Region = region;
            update.Ship = ship;
            update.CruiseLength = 0;
            update.DeparturePort = departurePort;
            update.VisitingPorts = visitingPorts;
            update.CruisePrice = 0f;

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
    }
}
