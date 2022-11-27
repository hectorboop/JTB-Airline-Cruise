using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Bookings : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<AirService.FlightBooking> flightBookings = new List<AirService.FlightBooking>(airService.AllBookings());
            List<SeaService.CruiseBooking> cruiseBookings = new List<SeaService.CruiseBooking>(seaService.AllBookings());

            CruiseRepeater.DataSource = cruiseBookings;
            CruiseRepeater.DataBind();

            FlightRepeater.DataSource = flightBookings;
            FlightRepeater.DataBind();
        }
    }
}