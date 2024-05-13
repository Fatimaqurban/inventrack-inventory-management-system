using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class SalesOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SalesData();
            }
        }
        private void SalesData()
        {
            using (SqlConnection conn = DBConnection.GetConnection())
            {
                string orderQuery = "SELECT orderID, tAmount, orderDate FROM SalesOrder ";
                using (SqlCommand oComm = new SqlCommand(orderQuery, conn))
                {
                    conn.Open();
                    GridView1.DataSource = oComm.ExecuteReader();
                    GridView1.DataBind();

                }

            }
        }

        protected void GridView1_RowCommand(object sender, EventArgs e)
        {

        }
    }
}