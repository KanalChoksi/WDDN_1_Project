using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;


namespace TaxiBooking
{
    
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDb;Initial Catalog=Admin_db;Integrated Security=True;Pooling=False");
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void Login1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Admin where username='"+Username1.Text+"' and password='"+ Password1.Text + "' ";

            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if(i == 1)
            {
                Session["Admin_ID"] = Username1.Text;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Label1.Text = "You have entered invalid Username or Password";
            }
            con.Close();






        }
    }
}