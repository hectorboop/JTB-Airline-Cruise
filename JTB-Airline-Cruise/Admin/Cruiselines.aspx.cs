using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Cruiseliner : System.Web.UI.Page
    {
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<SeaService._Cruiseline> cruiselines = new List<SeaService._Cruiseline>(seaService.GetCruiselines());

            CruiseRepeater.DataSource = cruiselines;
            CruiseRepeater.DataBind();
        }
    }
}