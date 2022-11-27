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
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("AllFlights", "AllFLights", "~/FlightList.aspx");
            routes.MapPageRoute("FlightDetails", "FlightDetails/{Id}", "~/FlightDetails.aspx");
        }
    }
}
