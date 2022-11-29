using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace JTB_Airline_Cruise.App
{
    public class DatabaseRepository
    {
        DatabaseContext context = new DatabaseContext();

        public void AddCustomer(string customerId)
        {
            Customer customer = new Customer()
            {
                AccountId = customerId,
            };

            context.Customer.Add(customer);
            context.SaveChanges();
        }
        public void UpdateCustomer(Customer customer)
        {
            var update = context.Customer.FirstOrDefault(c => c.AccountId == customer.AccountId);
            update = customer;

            context.Entry(update).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();
        }

        public Customer GetCustomer(string customerId)
        {
            return context.Customer.FirstOrDefault(c => c.AccountId == customerId);
        }

        public void DeleteCustomer(string customerId)
        {
            var delete = context.Customer.FirstOrDefault(c => c.AccountId == customerId);

            //context.Entry(delete).State = System.Data.Entity.EntityState.Deleted;
            context.Customer.Remove(delete);
            context.SaveChanges();
        }
    }
}