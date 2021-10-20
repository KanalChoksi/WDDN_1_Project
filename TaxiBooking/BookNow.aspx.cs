using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxiBooking
{
    public partial class BookNow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["login"] != null)
            {
                TextBox5.Text = ((int)Session["kilometers"] * 10).ToString();

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            label.Text = "<h1>Payment Done successfully !!</h1>";

        }
    }
}