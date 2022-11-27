using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise.Admin
{
    public partial class AddFlight : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        LocationService.CityService cityService = new LocationService.CityService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<LocationService.City> cityList = new List<LocationService.City>(cityService.GetCities());
                List<AirService._Airline> _airlineList = new List<AirService._Airline>(airService.GetAirlines());
                List<string> cities = new List<string>();
                List<string> airlines = new List<string>();

                foreach (var city in cityList)
                {
                    cities.Add(city.Name + ", " + city.Country);
                }

                foreach (var airline in _airlineList)
                {
                    airlines.Add(airline.Name);
                }

                AirlineDropDownList.DataSource = airlines;
                AirlineDropDownList.DataBind();

                FlightTypeDropDownList.DataSource = new List<string>() { "Round-Trip", "One-Way", "Multi-City" };
                FlightTypeDropDownList.DataBind();

                DepartureDropDownList.DataSource = cities;
                DepartureDropDownList.DataBind();

                DestinationDropDownList.DataSource = cities;
                DestinationDropDownList.DataBind();

                FlightIdTextBox.Text = (airService.GetLastFlightID() + 1).ToString();
                //FlightNameTextBox.Text = AirlineDropDownList.SelectedValue + " Flight-" + FlightIdTextBox.Text;

                DepartureDateTextBox.Text = DateTime.Today.Date.ToString("dd/MM/yyyy");
                ReturnDateTextBox.Text = DateTime.Today.AddDays(1).Date.ToString("dd/MM/yyyy");

                EconomyPriceTextBox.Text = "0";
                PremiumEconomyPriceTextBox.Text = "0";
                BusinessPriceTextBox.Text = "0";
                FirstPriceTextBox.Text = "0";

            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var departureDate = DepartureDateTextBox.Text.Split('/');
            var dDay = int.Parse(departureDate[0]);
            var dMonth = int.Parse(departureDate[1]);
            var dYear = int.Parse(departureDate[2]);

            var returnDate = ReturnDateTextBox.Text.Split('/');
            var rDay = int.Parse(returnDate[0]);
            var rMonth = int.Parse(returnDate[1]);
            var rYear = int.Parse(returnDate[2]);

            AirService._Flight _flight = new AirService._Flight()
            {
                AirlineName = AirlineDropDownList.SelectedValue,
                DepartureCity = DepartureDropDownList.SelectedValue,
                DestinationCity = DestinationDropDownList.SelectedValue,
                DepartureDate = new DateTime(dYear, dMonth, dDay),
                ReturnDate = new DateTime(rYear, rMonth, rDay),
                FlightClass = new List<string>() { "Economy" ,"Premium Economy" ,"Business" ,"First" }.ToArray(),
                FlightPrice = new List<float>() { float.Parse(EconomyPriceTextBox.Text), float.Parse(PremiumEconomyPriceTextBox.Text), 
                                                float.Parse(BusinessPriceTextBox.Text), float.Parse(FirstPriceTextBox.Text) }.ToArray(),
                FlightType = new List<string>() { "Round-Trip", "One-Way", "Multi-City" }.ToArray(),
                Plane = PlaneTextBox.Text
            };

            airService.AddFlight(_flight);

            Response.Redirect("Flights.aspx");
        }

    }
}