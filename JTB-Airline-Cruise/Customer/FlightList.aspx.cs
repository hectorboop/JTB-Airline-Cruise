using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.ServiceModel.Channels;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JTB_Airline_Cruise.AirService;

namespace JTB_Airline_Cruise
{
    public partial class FlightList : System.Web.UI.Page
    {
        List<_Flight> flights = new List<_Flight>();
        AirlineService airService = new AirlineService();
        LocationService.CityService cityService = new LocationService.CityService();

        List<_ResultSet> _results = new List<_ResultSet>();

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            DateTime tomorrow = DateTime.Now.AddDays(1);

            RefreshList("All");

            List<_Airline> airlineList = new List<_Airline>(airService.GetAirlines());
            List<LocationService.City> _cities = new List<LocationService.City>(cityService.GetCities());
            List<string> cities = new List<string>();

            foreach (var city in _cities)
            {
                cities.Add(city.Name + ", " + city.Country);
            }

            // Remember to reseed the database for users and change generation to retain customer info
            FlightCountLabel.Text = airService.GetFlightCount().ToString();

            int economy = 0, pEconomy = 0, business = 0, first = 0;

            foreach (var f in flights)
            {
                if (f.FlightPrice[0] != 0)
                {
                    economy++;
                }

                if (f.FlightPrice[1] != 0)
                {
                    pEconomy++;
                }

                if (f.FlightPrice[2] != 0)
                {
                    business++;
                }

                if (f.FlightPrice[3] != 0)
                {
                    first++;
                }

            }

            EconomyLabel.Text = economy.ToString();
            PremiumEconomyLabel.Text = pEconomy.ToString();
            BusinessLabel.Text = business.ToString();
            FirstLabel.Text = first.ToString();

            if (!IsPostBack)
            {
                FlightRepeater.DataSource = _results;
                FlightRepeater.DataBind();

                AirlineRepeater.DataSource = airlineList;
                AirlineRepeater.DataBind();

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
            flights.Clear();
            flights = new List<_Flight>(airService.AllFlights());


            foreach (_Flight f in flights)
            {
                int month = f.DepartureDate.Month;  
                int day = f.DepartureDate.Day;  
                int year = f.DepartureDate.Year;

            }

            // Do the filter at this level to minimize requests to the database
        }

        private List<string> GetFlightClass()
        {
            var fc = new List<string>();

            return fc;
        }

        protected void SubmitLinkButton_Click(object sender, EventArgs e)
        {
            // This is the Goto Flight Button
            RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;

            string id = (item.FindControl("Id") as Label).Text;
            string returnId = (item.FindControl("Label2") as Label).Text;

            Debug.WriteLine(returnId);

            int route = int.Parse(id);
            Session["ReturnFlightId"] = returnId;
            
            Response.Redirect(GetRouteUrl("FlightDetails", new { Id = route }));
            //Response.RedirectToRoute("FlightDetails", new { Id = route });
            //GetRouteUrl("FlightDetails", new { Id = 1 });
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

            _results = new List<_ResultSet>(airService.GetFlights(DepartureDropDownList.SelectedValue, DestinationDropDownList.SelectedValue, startDate, endDate));
            
            Debug.WriteLine(DepartureDropDownList.SelectedValue);
            Debug.WriteLine(DestinationDropDownList.SelectedValue);
            Debug.WriteLine(startDate);
            Debug.WriteLine(endDate);

            FlightRepeater.DataSource = _results;
            FlightRepeater.DataBind();
        }
    }
}