using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


namespace TaxiBooking
{
    public class customerdbContext : DbContext
    {
         
        public customerdbContext():base("wddnproject")
        {
            
        }
        public DbSet<Customer> Customers { get; set; }
    }
}