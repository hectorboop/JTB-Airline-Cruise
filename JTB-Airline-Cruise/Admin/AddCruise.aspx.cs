using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class AddCruise : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<LocationService.City> cityList = new List<LocationService.City>(cityService.GetCities());
            List<SeaService._Cruiseline> _cruiselineList = new List<SeaService._Cruiseline>(seaService.GetCruiselines());
            List<string> cities = new List<string>();
            List<string> cruiselines = new List<string>();

            foreach (var city in cityList)
            {
                cities.Add(city.Name + ", " + city.Country);
            }

            foreach (var cruiseline in _cruiselineList)
            {
                cruiselines.Add(cruiseline.Name);
            }

            CruiselineDropDownList.DataSource = cruiselines;
            CruiselineDropDownList.DataBind();

            CruiseTypeDropDownList.DataSource = new List<string>() { "Ocean Cruise", "River Cruise" };
            CruiseTypeDropDownList.DataBind();

            DepartureDropDownList.DataSource = cities;
            DepartureDropDownList.DataBind();

            DestinationDropDownList.DataSource = cities;
            DestinationDropDownList.DataBind();

            CruiseIdTextBox.Text = seaService.GetLastCruiseID().ToString();

            StartDateTextBox.Text = DateTime.Today.Date.ToString("dd/MM/yyyy");
            EndDateTextBox.Text = DateTime.Today.AddDays(1).Date.ToString("dd/MM/yyyy");

            InteriorRoomTextBox.Text = "0";
            OceanviewRoomTextBox.Text = "0";
            BalconyRoomTextBox.Text = "0";
            SuiteRoomTextBox.Text = "0";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var startDate = StartDateTextBox.Text.Split('/');
            var startDay = int.Parse(startDate[0]);
            var startMonth = int.Parse(startDate[1]);
            var startYear = int.Parse(startDate[2]);

            var endDate = EndDateTextBox.Text.Split('/');
            var endDay = int.Parse(endDate[0]);
            var endMonth = int.Parse(endDate[1]);
            var endYear = int.Parse(endDate[2]);

            var StartDate = new DateTime(startYear, startMonth, startDay);
            var EndDate = new DateTime(endYear, endMonth, endDay);

            SeaService._Cruise _cruise = new SeaService._Cruise()
            {
                Cruiseline = CruiselineDropDownList.SelectedValue,
                DeparturePort = DepartureDropDownList.SelectedValue,
                VisitingPorts = new List<string>() { DestinationDropDownList.SelectedValue }.ToArray(),
                StartDate = StartDate,
                EndDate = EndDate,
                RoomTypes = new List<string>() { "Interior", "Ocean View", "Balcony", "Suite" }.ToArray(),
                CruisePrice = new List<float>() { float.Parse(InteriorRoomTextBox.Text), float.Parse(OceanviewRoomTextBox.Text),
                    float.Parse(BalconyRoomTextBox.Text), float.Parse(SuiteRoomTextBox.Text) }.ToArray(),
                Ship = ShipNameTextBox.Text,
                CruiseLength = ((EndDate - StartDate).Days)
            };

            seaService.AddCruise(_cruise);

            Response.Redirect("Cruises.aspx");
        }
    }
}