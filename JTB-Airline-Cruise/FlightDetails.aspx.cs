using JTB_Airline_Cruise.App;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise
{
    public partial class FlightDetails : System.Web.UI.Page
    {
        AirService.AirlineService airService = new AirService.AirlineService();
        AirService._Flight _flight = new AirService._Flight();
        DatabaseRepository db = new DatabaseRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // This should create two flight bookings

                //Label1.Text = this.Page.RouteData.Values["Id"].ToString();
                
                _flight = airService.GetFlightSingle(int.Parse(RouteData.Values["Id"].ToString()));
                // Get date from session
                string f = (string)Session["ReturnFlightName"];
                string d = (string)Session["ReturnFlightDate"];

                ReturnDateDropDownList.DataSource = new List<string>() { d, "Not Returning" };
                ReturnDateDropDownList.DataBind();

                ReturnFlightDropDownList.DataSource = new List<string>() { f };
                ReturnFlightDropDownList.DataBind();

                List<string> classList = new List<string>();


                for (int a = 0; a < 4; a++)
                {
                    if (_flight.FlightPrice[a] != 0)
                    {
                        classList.Add(_flight.FlightClass[a]);
                    }
                }

                FlightClassDropDownList.DataSource = classList;
                FlightClassDropDownList.DataBind();

                SeatNumberDropDownList.DataSource = new List<string>() { "16A", "16B", "16C", "17A", "17B", "17C", "18A", "18B", "18C", "19A", "19B", "19C", "20A", "20B", "20C" };
                SeatNumberDropDownList.DataBind();

                FlightNameLabel.Text = _flight.AirlineName + " Flight - " + _flight.Id;

                DeparturePinLabel.Text = _flight.DepartureCity;
                DepartureCalLabel.Text = _flight.DepartureDate.ToString("MMMM dd, yyyy");

                ClassLabel.Text = FlightClassDropDownList.SelectedValue;
                DepartureDateLabel.Text = _flight.DepartureDate.ToString("MMMM dd, yyyy");
                DepartureCityLabel.Text = _flight.DepartureCity;
                FlightStopLabel.Text = "Returning";
                AirlineLabel.Text = _flight.AirlineName;
                FlightTimeLabel.Text = "Unknown";
                ArrivalDateLabel.Text = _flight.DepartureDate.ToString("MMMM dd, yyyy");
                DestinationLabel.Text = _flight.DestinationCity;
                SeatLabel.Text = SeatNumberDropDownList.SelectedValue;
                AirFareLabel.Text = _flight.FlightPrice[0].ToString();

                FlightIdLabel.Text = _flight.Id.ToString();
                FlightAirlineLabel.Text = _flight.AirlineName;
                FlightAircraftLabel.Text = _flight.Plane;
            }

        }

        protected void BookFlightButton_Click(object sender, EventArgs e)
        {
            airService.BookFlight(_flight.Id, User.Identity.Name, User.Identity.GetUserId(),
                _flight.DepartureDate.ToString("MM/dd/yyyy"), SeatNumberLabel.Text, float.Parse(AirFareLabel.Text));
            
            // Return flight
            // Get return flight id and price
            airService.BookFlight(_flight.Id, User.Identity.Name, User.Identity.GetUserId(),
                _flight.DepartureDate.ToString("MM/dd/yyyy"), SeatNumberLabel.Text, float.Parse(AirFareLabel.Text));

            int route = db.GetCustomer(User.Identity.GetUserId()).Id;
            Response.Redirect(GetRouteUrl("UserDashboard", new { Id = route }));
        }

        protected void FlightClassDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (FlightClassDropDownList.SelectedValue == "Economy")
            {
                AirFareLabel.Text = _flight.FlightPrice[0].ToString();
                SeatNumberDropDownList.DataSource = new List<string>() { "16A", "16B", "16C", "17A", "17B", "17C", "18A", "18B", "18C", "19A", "19B", "19C", "20A", "20B", "20C" };
                SeatNumberDropDownList.DataBind();
            }

            if (FlightClassDropDownList.SelectedValue == "Premium Economy")
            {
                AirFareLabel.Text = _flight.FlightPrice[1].ToString();
                SeatNumberDropDownList.DataSource = new List<string>() { "11A", "11B", "11C", "12A", "12B", "12C", "13A", "13B", "13C", "14A", "14B", "14C", "15A", "15B", "15C" };
                SeatNumberDropDownList.DataBind();
            }

            if (FlightClassDropDownList.SelectedValue == "Business")
            {
                AirFareLabel.Text = _flight.FlightPrice[2].ToString();
                SeatNumberDropDownList.DataSource = new List<string>() { "7A", "7B", "8A", "8B", "9A", "9B", "10A", "10B" };
                SeatNumberDropDownList.DataBind();
            }

            if (FlightClassDropDownList.SelectedValue == "First Class")
            {
                AirFareLabel.Text = _flight.FlightPrice[3].ToString();
                SeatNumberDropDownList.DataSource = new List<string>() { "1F", "2F", "3F", "4F", "5F", "6F" };
                SeatNumberDropDownList.DataBind();
            }
        }

        protected void SeatNumberDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SeatLabel.Text = SeatNumberDropDownList.SelectedValue;
        }

        protected void ReturnDateDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ReturnFlightDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}