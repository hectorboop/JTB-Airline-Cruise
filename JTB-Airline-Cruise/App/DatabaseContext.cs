using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext() : base("JTB_DB")
        {
            Database.SetInitializer<DatabaseContext>(new DatabaseInitializer());
        }

        public DbSet<Airline> Airlines { get; set; }
        public DbSet<Flight> Flights { get; set; }
        public DbSet<Cruiseline> Cruiselines { get; set; }
        public DbSet<Cruise> Cruises { get; set; }
        public DbSet<FlightBooking> FlightBookings { get; set; }
        public DbSet<CruiseBooking> CruiseBookings { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            base.OnModelCreating(modelBuilder);
        }
    }
}