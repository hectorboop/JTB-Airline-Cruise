using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise
{
    public partial class CruiseList : System.Web.UI.Page
    {
        List<SeaService._Cruise> cruises = new List<SeaService._Cruise>();
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            DateTime tomorrow = DateTime.Now.AddDays(1);

            RefreshList("All");

            List<SeaService._Cruiseline> cruiselineList = new List<SeaService._Cruiseline>(seaService.GetCruiselines());
            List<LocationService.City> _cities = new List<LocationService.City>(cityService.GetCities());
            List<string> cities = new List<string>();

            foreach (var city in _cities)
            {
                cities.Add(city.Name + ", " + city.Country);
            }

            CruiseCountLabel.Text = seaService.GetCruiseCount().ToString();

            int interior = 0, oceanView = 0, balcony = 0, suite = 0;

            foreach (var c in cruises)
            {
                if (c.CruisePrice[0] != 0)
                {
                    interior++;
                }

                if (c.CruisePrice[1] != 0)
                {
                    oceanView++;
                }

                if (c.CruisePrice[2] != 0)
                {
                    balcony++;
                }

                if (c.CruisePrice[3] != 0)
                {
                    suite++;
                }

            }

            InteriorLabel.Text = interior.ToString();
            OceanViewLabel.Text = oceanView.ToString();
            BalconyLabel.Text = balcony.ToString();
            SuiteLabel.Text = suite.ToString();

            if (!IsPostBack)
            {
                CruiseRepeater.DataSource = cruises;
                CruiseRepeater.DataBind();

                CruiselineRepeater.DataSource = cruiselineList;
                CruiselineRepeater.DataBind();

                DepartureDropDownList.DataSource = cities;
                DepartureDropDownList.DataBind();

                DestinationDropDownList.DataSource = cities;
                DestinationDropDownList.DataBind();

                DepartureDropDownList.SelectedValue = "Kingston, Jamaica";
                DestinationDropDownList.SelectedValue = "New York, United States";

                AdultsTextBox.Text = 1.ToString();

                DateRangeTextBox.Text = today.ToString("MM/dd/yyyy") + " - " + tomorrow.ToString("MM/dd/yyyy");
            }
        }

        private void RefreshList(string filter)
        {
            cruises.Clear();
            cruises = new List<SeaService._Cruise>(seaService.GetCruises("11/30/2022", "11/30/2022"));


            foreach (var c in cruises)
            {
                int month = c.StartDate.Month;
                int day = c.StartDate.Day;
                int year = c.StartDate.Year;

            }

            // Do the filter at this level to minimize requests to the database
        }

        protected void SubmitLinkButton_Click(object sender, EventArgs e)
        {
            // This is the Goto Flight Button
            RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;

            string id = (item.FindControl("Id") as Label).Text;

            int route = int.Parse(id);

            Response.RedirectToRoute("CruiseDetails", new { Id = route });
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var dates = DateRangeTextBox.Text.Split('-');
            var startDate = dates[0].Trim();
            var endDate = dates[1].Trim();

            var sDate = startDate.Split('/');
            var sDay = sDate[1];
            var sMonth = sDate[0];
            var sYear = sDate[2];

            var eDate = endDate.Split('/');
            var eDay = eDate[1];
            var eMonth = eDate[0];
            var eYear = eDate[2];

            var departureDate = new DateTime(int.Parse(sYear), int.Parse(sMonth), int.Parse(sDay));
            var destinationDate = new DateTime(int.Parse(eYear), int.Parse(eMonth), int.Parse(eDay));

            // This is the search button
            Debug.WriteLine(DepartureDropDownList.SelectedValue);
            Debug.WriteLine(DestinationDropDownList.SelectedValue);
            Debug.WriteLine(AdultsTextBox.Text);
            Debug.WriteLine(departureDate.ToString());
            Debug.WriteLine(destinationDate.ToString());

            cruises = new List<SeaService._Cruise>(seaService.GetCruises(departureDate.ToString("MM/dd/yyyy"), destinationDate.ToString("MM/dd/yyyy")));

            CruiseRepeater.DataSource = cruises;
            CruiseRepeater.DataBind();
        }
    }
}