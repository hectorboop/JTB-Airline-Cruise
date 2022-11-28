using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise
{
    public partial class CruiseDetails : System.Web.UI.Page
    {
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        SeaService._Cruise _cruise = new SeaService._Cruise();  

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // This should create two Cruise bookings

                //Label1.Text = this.Page.RouteData.Values["Id"].ToString();
                _cruise = seaService.GetCruiseSingle(1000);
                
                List<string> roomList = new List<string>();


                for (int a = 0; a < 4; a++)
                {
                    if (_cruise.CruisePrice[a] != 0)
                    {
                        roomList.Add(_cruise.RoomTypes[a]); break;
                    }
                }

                RoomTypeDropDownList.DataSource = roomList;
                RoomTypeDropDownList.DataBind();

                RoomNumberDropDownList.DataSource = new List<string>() { "D16A1", "D16B2", "D16C3", "17A", "17B", "17C", "18A", "18B", "18C", "19A", "19B", "19C", "20A", "20B", "20C" };
                RoomNumberDropDownList.DataBind();

                CruiseNameLabel.Text = _cruise.Cruiseline + " Cruise - " + _cruise.Id;

                DeparturePinLabel.Text = _cruise.DeparturePort;
                DepartureCalLabel.Text = _cruise.StartDate.ToString("MMMM dd, yyyy");

                RoomLabel.Text = RoomTypeDropDownList.SelectedValue;
                DepartureDateLabel.Text = _cruise.StartDate.ToString("MMMM dd, yyyy");
                DepartureCityLabel.Text = _cruise.DeparturePort;
                PortCallsLabel.Text = "1";
                CruiselineLabel.Text = _cruise.Cruiseline;
                CruiseTimeLabel.Text = _cruise.CruiseLength.ToString() + " Nights";
                ArrivalDateLabel.Text = _cruise.StartDate.ToString("MMMM dd, yyyy");
                DestinationLabel.Text = _cruise.VisitingPorts[0];
                RoomNumLabel.Text = RoomNumberDropDownList.SelectedValue;
                CruisePriceLabel.Text = _cruise.CruisePrice[0].ToString();

                CruiseIdLabel.Text = _cruise.Id.ToString();
                CruiseCruiselineLabel.Text = _cruise.Cruiseline;
                CruiseShipLabel.Text = _cruise.Ship;
            }
        }

        protected void BookCruiseButton_Click(object sender, EventArgs e)
        {

        }

        protected void RoomTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RoomTypeDropDownList.SelectedValue == "Interior")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[0].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "16A", "16B", "16C", "17A", "17B", "17C", "18A", "18B", "18C", "19A", "19B", "19C", "20A", "20B", "20C" };
                RoomNumberDropDownList.DataBind();
            }

            if (RoomTypeDropDownList.SelectedValue == "Ocean View")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[1].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "11A", "11B", "11C", "12A", "12B", "12C", "13A", "13B", "13C", "14A", "14B", "14C", "15A", "15B", "15C" };
                RoomNumberDropDownList.DataBind();
            }

            if (RoomTypeDropDownList.SelectedValue == "Balcony")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[2].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "7A", "7B", "8A", "8B", "9A", "9B", "10A", "10B" };
                RoomNumberDropDownList.DataBind();
            }

            if (RoomTypeDropDownList.SelectedValue == "Suite")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[3].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "1F", "2F", "3F", "4F", "5F", "6F" };
                RoomNumberDropDownList.DataBind();
            }
        }

        protected void RoomNumberDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            RoomLabel.Text = RoomNumberDropDownList.SelectedValue;
        }
    }
}