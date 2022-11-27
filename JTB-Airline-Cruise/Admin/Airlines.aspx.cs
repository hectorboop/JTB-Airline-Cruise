using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Airlines : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<AirService._Airline> airlines = new List<AirService._Airline>(airService.GetAirlines());

           AirlineRepeater.DataSource = airlines;
           AirlineRepeater.DataBind();
        }
    }
}