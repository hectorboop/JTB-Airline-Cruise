using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class AddCity : System.Web.UI.Page
    {
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string city = CityTextBox.Text;
            string country = CountryTextBox.Text;

            cityService.AddCity(city, country);

            CityTextBox.Text = "";
            CountryTextBox.Text = "";

            Response.Redirect("Cities.aspx");
        }
    }
}