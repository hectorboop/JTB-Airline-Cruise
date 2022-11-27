using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class Cities : System.Web.UI.Page
    {
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<LocationService.City> cityList = new List<LocationService.City>(cityService.GetCities());

            CityRepeater.DataSource = cityList;
            CityRepeater.DataBind();
        }
    }
}