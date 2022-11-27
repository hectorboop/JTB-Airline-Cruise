using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Cruises : System.Web.UI.Page
    {
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<SeaService._Cruise> _cruises = new List<SeaService._Cruise>(seaService.AllCruises());

            CruiseRepeater.DataSource = _cruises;
            CruiseRepeater.DataBind();
        }

        protected void DeleteLinkButton_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;

            string id = (item.FindControl("Id") as System.Web.UI.WebControls.Label).Text;

            seaService.DeleteCruise(int.Parse(id));

            Response.Redirect("Cruises.aspx");
        }
    }
}