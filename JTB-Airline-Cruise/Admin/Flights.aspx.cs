using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Flights : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<AirService._Flight> _flights = new List<AirService._Flight>(airService.AllFlights());

            FlightRepeater.DataSource = _flights;
            FlightRepeater.DataBind();
        }

        protected void DeleteLinkButton_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;
            
            string id = (item.FindControl("Id") as System.Web.UI.WebControls.Label).Text;

            airService.DeleteFlight(int.Parse(id));

            Response.Redirect("Flights.aspx");
        }
    }
}