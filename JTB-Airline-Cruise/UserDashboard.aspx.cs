using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FullNameLabel.Text = "";
            LocationLabel.Text = "";
            LanguagesLabel.Text = "";
            WebsiteLabel.Text = "";
            EmailLabel.Text = "";
            PhoneLabel.Text = "";
            DesignationLabel.Text = "";
            GenderLabel.Text = "";
            BiographyLabel.Text = "";

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //FirstNameTextBox.Text;
            //LastNameTextBox.Text;
            //EmailTextBox.Text;
            //PhoneNumberTextBox.Text;
            //AddressTextBox.Text;
            //CityTextBox.Text;
            //ZipCodeTextBox.Text;
            //CountryDropDownList.SelectedValue;
            //DesignationTextBox.Text;
            //GenderDropDownList.SelectedValue;
            //DescriptionTextBox.Text;
        }
    }
}