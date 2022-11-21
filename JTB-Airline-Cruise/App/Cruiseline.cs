using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class Cruiseline
    {
        public int CruiselineID { get; set; }
        public string CruiselineName { get; set; }
        public virtual List<Cruise> Cruises { get; set; }
    }
}