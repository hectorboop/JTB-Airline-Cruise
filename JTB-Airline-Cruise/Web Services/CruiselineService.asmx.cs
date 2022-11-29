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
        public List<_Cruise> GetCruises(string checkInDate, string checkOutDate)
        {
            var iDate = checkInDate.Split('/');
            var iDay = iDate[1];
            var iMonth = iDate[0];
            var iYear = iDate[2];

            var inDate = new DateTime(int.Parse(iYear), int.Parse(iMonth), int.Parse(iDay));

            var oDate = checkOutDate.Split('/');
            var oDay = oDate[1];
            var oMonth = oDate[0];
            var oYear = oDate[2];

            var outDate = new DateTime(int.Parse(oYear), int.Parse(oMonth), int.Parse(oDay));

            List<Cruise> cruises = _databaseContext.Cruises.Where(c => c.StartDate.Date >= inDate.Date
                                                                    && c.EndDate.Date >= outDate.Date).ToList();
            List<_Cruise> _cruises = new List<_Cruise>();

            foreach (Cruise cruise in cruises)
            {
                _cruises.Add(new _Cruise().Parse(cruise));
            }

            // Should return room_types
            return _cruises;
        }

        [WebMethod] //Default
        public void BookCruise(int cruiseId,string roomType, string roomNumber, string passenger, string passengerId, string checkindate, string checkoutdate, float cost)
        {
            var iDate = checkindate.Split('/');
            var iDay = iDate[1];
            var iMonth = iDate[0];
            var iYear = iDate[2];

            var inDate = new DateTime(int.Parse(iYear), int.Parse(iMonth), int.Parse(iDay));

            var oDate = checkoutdate.Split('/');
            var oDay = oDate[1];
            var oMonth = oDate[0];
            var oYear = oDate[2];

            var outDate = new DateTime(int.Parse(oYear), int.Parse(oMonth), int.Parse(oDay));


            CruiseBooking booking = new CruiseBooking() 
            {
                PassengerId = passenger,
                PassengerName = passenger,
                CruiseId = cruiseId,
                Departure = _databaseContext.Cruises.FirstOrDefault(f => f.CruiseID == cruiseId).DeparturePort,
                Destination = _databaseContext.Cruises.FirstOrDefault(f => f.CruiseID == cruiseId).DeparturePort,
                RoomNumber = roomNumber,
                BookingCost = cost,
                CheckInDate = inDate,
                CheckOutDate = outDate
            };

            _databaseContext.CruiseBookings.Add(booking);
            _databaseContext.SaveChanges();
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
        public List<_Cruise> AllCruises()
        {
            List<Cruise> cruises = _databaseContext.Cruises.ToList();
            List<_Cruise> _cruises = new List<_Cruise>();

            foreach (Cruise cruise in cruises)
            {
                _cruises.Add(new _Cruise().Parse(cruise));
            }

            return _cruises;
        }

        [WebMethod]
        public Cruise GetCruiseById(int cruiseId)
        {
            return _databaseContext.Cruises.FirstOrDefault(c => c.CruiseID == cruiseId);
        }

        [WebMethod]
        public _Cruise GetCruiseSingle(int cruiseId)
        {
            return new _Cruise().Parse(_databaseContext.Cruises.FirstOrDefault(c => c.CruiseID == cruiseId));
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
        public List<_Cruiseline> GetCruiselines()
        {
            List<_Cruiseline> _cruiselines = new List<_Cruiseline>();

            var list = _databaseContext.Cruiselines.ToList();

            foreach (var cruiseline in list)
            {
                _cruiselines.Add(new _Cruiseline().Parse(cruiseline));
            }

            return _cruiselines;
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
        public int GetLastCruiseLineID()
        {
            return _databaseContext.Cruiselines.OrderByDescending(c => c.CruiselineID).FirstOrDefault().CruiselineID;
        }

        [WebMethod]
        public List<CruiseBooking> AllBookings()
        {
            return _databaseContext.CruiseBookings.ToList();
        }

        [WebMethod]
        public List<CruiseBooking> GetBookings(string passengerId)
        {
            // Not working?
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
