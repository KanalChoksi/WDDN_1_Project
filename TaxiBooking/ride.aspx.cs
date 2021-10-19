using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiBooking
{
    public partial class ride : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"] != null)
            {
                label.Text = "Welcome, "+Session["login"].ToString();
            }
            else
            {
                Response.Redirect("customerlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["login"] != null)
            {
                string origin = TextBox1.Text;
                string destination = TextBox2.Text;
                if ((origin == "Ahmedabad" && destination == "Nadiad") || (origin == "Nadiad" && destination == "Ahmedabad"))
                {
                    Session["kilometers"] = 70;
                }
                else if((origin == "Vadodara" && destination == "Nadiad") || (origin == "Nadiad" && destination == "Vadodara"))
                {
                    Session["kilometers"] = 70;
                }
                else if ((origin == "Vadodara" && destination == "Ahmedabad") || (origin == "Ahmedabad" && destination == "Vadodara"))
                {
                    Session["kilometers"] = 120;
                }
                else
                {
                    Label2.Text = "Sorry!! This ride is currently not available";
                }
                Response.Redirect("BookNow.aspx");
            }
            else
            {
                Response.Redirect("customerlogin.aspx");
            }
        }
    }
}