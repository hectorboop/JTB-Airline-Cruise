using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class AddCruiseliner : System.Web.UI.Page
    {
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        protected void Page_Load(object sender, EventArgs e)
        {
            CruiselineIdTextBox.Text = (seaService.GetLastCruiseLineID() + 1).ToString();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            seaService.AddCruiseline(CruiselineTextBox.Text.Trim());
            CruiselineTextBox.Text = "";

            Response.Redirect("Cruiselines.aspx");
        }
    }
}