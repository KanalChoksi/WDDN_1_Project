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
<<<<<<< HEAD
            if (Session["login"] != null)
            {
                TextBox5.Text = ((int)Session["kilometers"] * 10).ToString();

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            label.Text = "<h1>Payment Done successfully !!</h1>";
=======

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert(' Payment Done Successfully ');</script>");
>>>>>>> 9034f8ade176b02c2994d9c6d9b950fd28050205
        }

    }
}