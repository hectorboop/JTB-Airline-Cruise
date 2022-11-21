using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseRepository
    {
        private static DatabaseContext _instance = new DatabaseContext();
    }
}