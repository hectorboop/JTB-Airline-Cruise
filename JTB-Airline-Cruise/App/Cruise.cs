using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace JTB_Airline_Cruise.App
{
    [Serializable]
    public class Cruise
    {
        public int CruiseID { get; set; }
        public string Name { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public virtual Cruiseline Cruiseline { get; set; }
        public string Ship { get; set; }
        public int CruiseLength { get; set; }
        public string DeparturePort { get; set; }
        public virtual List<VisitingPort> VisitingPorts { get; set; }
        public virtual List<CruisePrice> CruisePrice { get; set; }
        public virtual List<RoomType> RoomTypes { get; set; }
    }

    [Serializable]
    public class VisitingPort
    {
        public int Id { get; set; }
        public virtual Cruise Cruise { get; set; }
        public string Name { get; set; }
    }

    [Serializable]
    public class CruisePrice
    {
        public int Id { get; set; }
        public virtual Cruise Cruise { get; set; }
        public float Price { get; set; }
    }

    [Serializable]
    public class RoomType
    {
        public int Id { get; set; }
        public virtual Cruise Cruise { get; set; }
        public string Name { get; set; }
    }
}