using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
namespace TaxiBooking.Admin
{
    
    public class Taxi
    {
        public string taxi_name { get; set; }
        public string taxi_num { get; set; }
        public string taxi_desc { get; set; }
        public int rent_per_km { get; set; }
        public string photo { get; set; }
        public int status { get; set; }

    }
    public class taxi_class
    {
        public static List<Taxi> GetAllEmployees()
        {
            List<Taxi> listTaxi = new List<Taxi>();
            using ( SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDb;Initial Catalog=Admin_db;Integrated Security=True;Pooling=False"))
            {
                SqlCommand cmd = new SqlCommand("Select * from Taxi", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Taxi taxi = new Taxi();
                    taxi.taxi_name = rdr["taxi_name"].ToString();
                    taxi.taxi_num = rdr["taxi_num"].ToString();
                    taxi.taxi_desc = rdr["taxi_desc"].ToString();
                    taxi.rent_per_km = Convert.ToInt32(rdr["rent_per_km"]);

                    taxi.photo = rdr["taxi_image"].ToString();
                    taxi.status = Convert.ToInt32(rdr["status"]);

                    listTaxi.Add(taxi);
                }
            }
            

            return listTaxi;
        }
    }
}