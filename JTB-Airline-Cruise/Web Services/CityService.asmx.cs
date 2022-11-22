using JTB_Airline_Cruise.App;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace JTB_Airline_Cruise.Web_Services
{
    /// <summary>
    /// Summary description for CityService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CityService : System.Web.Services.WebService
    {
        private static DatabaseContext _databaseContext = new DatabaseContext();

        [WebMethod]
        public void AddCity(string cityName, string countryName)
        {
            City alreadyExists = _databaseContext.City.FirstOrDefault(c => c.Name == cityName);

            if (alreadyExists != null)
            {
                return;
            }

            City city = new City()
            {
                Name = cityName,
                Country = countryName
            };

            _databaseContext.City.Add(city);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public List<City> GetCities()
        {
            return _databaseContext.City.ToList();
        }

        [WebMethod]
        public void DeleteCity(int cityId)
        {
            City city = _databaseContext.City.FirstOrDefault(c => c.Id == cityId);
            
            _databaseContext.City.Remove(city);
            _databaseContext.SaveChanges();
        }

        [WebMethod]
        public void UpdateCity(int cityId, string cityName)
        {
            City update = _databaseContext.City.FirstOrDefault(c => c.Id == cityId);
            update.Name = cityName;

            _databaseContext.Entry(update).State = EntityState.Modified;
            _databaseContext.SaveChanges();
        }
    }
}
