using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace WebApplicationProj
{
    public class DBConnection
    {
        public static SqlConnection GetConnection()
        {
            string connectionString = "Data Source=DESKTOP-5IMBASI\\SQLEXPRESS;Initial Catalog=InvenTrack5;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            return connection;
        }
    }

}