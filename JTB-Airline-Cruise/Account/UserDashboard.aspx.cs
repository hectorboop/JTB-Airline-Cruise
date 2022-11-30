using JTB_Airline_Cruise.App;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        DatabaseRepository db = new DatabaseRepository();
        AirService.AirlineService airService = new AirService.AirlineService();
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<AirService.FlightBooking> flightBookings = new List<AirService.FlightBooking>(airService.GetBookings(User.Identity.GetUserId()));
            List<SeaService.CruiseBooking> cruiseBookings = new List<SeaService.CruiseBooking>(seaService.GetBookings(User.Identity.GetUserId()));
            Customer customer = db.GetCustomer(User.Identity.GetUserId());

            FullNameLabel.Text = customer.FirstName + " " + customer.LastName;
            LocationLabel.Text = customer.Country;
            LanguagesLabel.Text = "English";
            WebsiteLabel.Text = "Unknown";
            EmailLabel.Text = customer.Email;
            PhoneLabel.Text = customer.PhoneNumber;
            DesignationLabel.Text = customer.Designation;
            GenderLabel.Text = customer.Gender;
            BiographyLabel.Text = customer.AboutMe;

            GenderDropDownList.DataSource = new List<string>() { "Male" ,"Female" };
            GenderDropDownList.DataBind();

            CruisesRepeater.DataSource = cruiseBookings;
            CruisesRepeater.DataBind(); 

            FlightRepeater.DataSource = flightBookings;
            FlightRepeater.DataBind();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer()
            {
                FirstName = FirstNameTextBox.Text,
                LastName = LastNameTextBox.Text,
                Email = EmailTextBox.Text,
                PhoneNumber = PhoneNumberTextBox.Text,
                Address = AddressTextBox.Text,
                City = CityTextBox.Text,
                ZipCode = ZipCodeTextBox.Text,
                Country = CountryDropDownList.SelectedValue,
                Designation = DesignationTextBox.Text,
                Gender = GenderDropDownList.SelectedValue,
                AboutMe = DescriptionTextBox.Text,
            };
        }
    }
}