using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JTB_Airline_Cruise.AirService;

namespace JTB_Airline_Cruise
{
    public partial class FlightList : System.Web.UI.Page
    {
        List<_Flight> flights = new List<_Flight>();
        List<List<string>> fClasses = new List<List<string>>(); 
        AirlineService airService = new AirlineService();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                RefreshList("All");
            }
            
            

            FlightRepeater.DataSource = flights;
            FlightRepeater.DataBind();

            
        }

        private void RefreshList(string filter)
        {
            flights.Clear();
            flights = new List<_Flight>(airService.AllFlights());


            foreach (_Flight f in flights)
            {
                fClasses.Add(new List<string>(f.FlightClass));
            }

            // Do the filter at this level to minimize requests to the database
        }

        private List<string> GetFlightClass()
        {
            var fc = new List<string>();

            return fc;
        }
    }
}