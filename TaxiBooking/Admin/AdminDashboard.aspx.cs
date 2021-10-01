using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;




namespace TaxiBooking.Admin
{
    public partial class AdminDashboard : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDb;Initial Catalog=Admin_db;Integrated Security=True;Pooling=False");
        String a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void view_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminView.aspx");
        }

        protected void Taxi_add_Click(object sender, EventArgs e)
        {
            Taxi_image.SaveAs(Server.MapPath("~/image/") + Path.GetFileName(Taxi_image.FileName));
            String link = "~/image/" + Path.GetFileName(Taxi_image.FileName);
            con.Open();
                SqlCommand cmd = con.CreateCommand();
                
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Taxi values('" + Taxi_name.Text + "','" + Taxi_num.Text + "','" + Description.Text + "'," + Taxi_prent.Text + ",'" +link+ "'," + Taxi_status.Text + ")";
                cmd.ExecuteNonQuery();
                Taxi_name.Text = "";
                Taxi_num.Text = "";
                Description.Text = "";
                Taxi_prent.Text = "";
                Taxi_status.Text = "";

                con.Close();
            }



        }
        
       
}
