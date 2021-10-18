using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TaxiBooking
{
    public class Customer
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id{ get; set; }
        public string  FirstName { get; set; }
        public string LastName  { get; set; }
        public string Email { get; set; }
        public long Phone { get; set; }
        public string Password { get; set; }
    }
}