using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JTB_Airline_Cruise.AirService;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Flights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AirlineService airlineService = new AirlineService();
        }
    }
}