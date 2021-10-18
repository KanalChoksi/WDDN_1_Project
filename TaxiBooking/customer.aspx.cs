using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiBooking
{
    public partial class customer : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            customerdbContext db = new customerdbContext();
            Customer cust = new Customer { FirstName = TextBox1.Text, LastName = TextBox2.Text, Email = TextBox3.Text, Phone = Convert.ToInt64(TextBox4.Text) ,Password=TextBox5.Text};
            db.Customers.Add(cust);
            db.SaveChanges();
            Session["login"] = TextBox1.Text;
            Response.Redirect("Index.aspx");
        }
    }
}