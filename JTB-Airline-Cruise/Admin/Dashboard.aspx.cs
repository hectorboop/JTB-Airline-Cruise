using JTB_Airline_Cruise.App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {
            BookingsLabel.Text = (airService.GetBookingCount() + seaService.GetBookingCount()).ToString();
            CruisesLabel.Text = seaService.GetCruiseCount().ToString();
            FlightsLabel.Text = airService.GetFlightCount().ToString();
            RevenueLabel.Text = "$" + (seaService.GetCruiseRevenue() + airService.GetFlightRevenue()).ToString();

            List<AirService.FlightBooking> flightBookings = new List<AirService.FlightBooking>(airService.GetRecentBookings());
            List<SeaService.CruiseBooking> cruiseBookings = new List<SeaService.CruiseBooking>(seaService.GetRecentBookings());

            CruisesRepeater.DataSource = cruiseBookings;
            CruisesRepeater.DataBind();

            FlightsRepeater.DataSource = flightBookings;
            FlightsRepeater.DataBind();

        }
    }
}