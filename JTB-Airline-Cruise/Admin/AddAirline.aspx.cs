using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class AddAirline : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        protected void Page_Load(object sender, EventArgs e)
        {
            AirIdTextBox.Text = (airService.GetLastAirlineID() + 1).ToString();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            airService.AddAirline(AirlineTextBox.Text);

            Response.Redirect("Airlines.aspx");
        }
    }
}