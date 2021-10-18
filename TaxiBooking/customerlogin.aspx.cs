using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiBooking
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            customerdbContext _db = new customerdbContext();
            foreach(var a in _db.Customers)
            {
                if(TextBox1.Text == a.Email)
                {
                    if(TextBox2.Text == a.Password)
                    {
                        Session["login"] = a.FirstName;
                        Response.Redirect("ride.aspx");
                    }
                }
                else
                {
                    //TextBox3.Text = "Incorrect Email or Password";
                }
            }
           
            
        }
    }
}