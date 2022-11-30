using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace JTB_Airline_Cruise
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("AllFlights", "AllFLights", "~/Customer/FlightList.aspx");
            routes.MapPageRoute("FlightDetails", "FlightDetails/{Id}", "~/Customer/FlightDetails.aspx");
            routes.MapPageRoute("AllCruises", "AllCruises", "~/Customer/CruiseList.aspx");
            routes.MapPageRoute("CruiseDetails", "CruiseDetails/{Id}", "~/Customer/CruiseDetails.aspx");
            routes.MapPageRoute("UserDashboard", "UserDashboard/{Id}", "~/Account/UserDashboard.aspx");

            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
        }
    }
}
