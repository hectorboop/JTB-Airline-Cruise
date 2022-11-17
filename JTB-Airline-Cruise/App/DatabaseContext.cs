using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext() : base("JTB_DB")
        {
            //Database.SetInitializer<DatabaseContext>(new AppInitializer())
        }
    }
}