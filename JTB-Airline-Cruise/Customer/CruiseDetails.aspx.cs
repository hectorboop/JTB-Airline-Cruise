using JTB_Airline_Cruise.App;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JTB_Airline_Cruise
{
    public partial class CruiseDetails : System.Web.UI.Page
    {
        SeaService.CruiselineService seaService = new SeaService.CruiselineService();
        SeaService._Cruise _cruise = new SeaService._Cruise();  
        DatabaseRepository db = new DatabaseRepository();

        protected void Page_Load(object sender, EventArgs e)
        {
            _cruise = seaService.GetCruiseSingle(int.Parse(this.Page.RouteData.Values["Id"].ToString()));

            if (!IsPostBack)
            {
                // This should create two Cruise bookings

                //Label1.Text = this.Page.RouteData.Values["Id"].ToString();
               
                
                List<string> roomList = new List<string>();


                for (int a = 0; a < 4; a++)
                {
                    if (_cruise.CruisePrice[a] != 0)
                    {
                        if (_cruise.RoomTypes[a] == null) return;

                        roomList.Add(_cruise.RoomTypes[a]);
                    }
                }

                RoomTypeDropDownList.DataSource = roomList;
                RoomTypeDropDownList.DataBind();

                RoomNumberDropDownList.DataSource = new List<string>() { "1F16A", "1F16B", "1F16C", "1F17A", "1F17B", "1F17C", "1F18A", "1F18B", "1F18C", "1F19A", "1F19B", "1F19C", "1F20A", "1F20B", "1F20C" };
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
            seaService.BookCruise(_cruise.Id, RoomLabel.Text, RoomNumLabel.Text, User.Identity.Name, User.Identity.GetUserId(),
                _cruise.StartDate.ToString("MM/dd/yyyy"), _cruise.EndDate.ToString("MM/dd/yyyy"), float.Parse(CruisePriceLabel.Text));

            int route = db.GetCustomer(User.Identity.GetUserId()).Id;
            Response.Redirect(GetRouteUrl("UserDashboard", new { Id = route }));
        }

        protected void RoomTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RoomTypeDropDownList.SelectedValue == "Interior")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[0].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "1F16A", "1F16B", "1F16C", "1F17A", "1F17B", "1F17C", "1F18A", "1F18B", "1F18C", "1F19A", "1F19B", "1F19C", "1F20A", "1F20B", "1F20C" };
                RoomNumberDropDownList.DataBind();
            }

            if (RoomTypeDropDownList.SelectedValue == "Ocean View")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[1].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "11A1", "11A2", "11A3", "12B1", "12B2", "12B3", "13C1", "13C2", "13C3", "14D1", "14D2", "14D3", "15E1", "15E2", "15E3" };
                RoomNumberDropDownList.DataBind();
            }

            if (RoomTypeDropDownList.SelectedValue == "Balcony")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[2].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "B30A", "B30B", "B30C", "B31A", "B31B", "B31C", "B32A", "B32B", "B32C" };
                RoomNumberDropDownList.DataBind();
            }

            if (RoomTypeDropDownList.SelectedValue == "Suite")
            {
                CruisePriceLabel.Text = _cruise.CruisePrice[3].ToString();
                RoomNumberDropDownList.DataSource = new List<string>() { "S1001", "S1002", "S1003", "S2001", "S2002", "S2003" };
                RoomNumberDropDownList.DataBind();
            }
        }

        protected void RoomNumberDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            RoomLabel.Text = RoomNumberDropDownList.SelectedValue;
        }
    }
}