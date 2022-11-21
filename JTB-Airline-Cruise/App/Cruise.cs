using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class Cruise
    {
        public int CruiseID { get; set; }
        public string Name { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public virtual Cruiseline Cruiseline { get; set; }
        public string Region { get; set; }
        public string Ship { get; set; }
        public int CruiseLength { get; set; }
        public string DeparturePort { get; set; }
        public string VisitingPorts { get; set; }
        public float CruisePrice { get; set; }  
    }
}