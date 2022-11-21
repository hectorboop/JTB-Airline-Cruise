using JTB_Airline_Cruise.App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

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

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        public List<Flight> GetFlights(string Country, string City, string Date)
        {
            List<Flight> flights = new List<Flight>();

            return flights;
        }

        public void BookFlight(string FlightID, string Name, string DOB)
        {

        }

    }
}
