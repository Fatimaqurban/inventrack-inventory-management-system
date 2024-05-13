using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class StockList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStockData();
            }
        }

        private void BindStockData()
        {
            // Retrieve connection string from web.config
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                // Define SQL query
                string query = "SELECT stockID, stockLevel, thresholdLevel, purchaseDate FROM Stock";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the query and bind data to GridView
                    GridViewStock.DataSource = command.ExecuteReader();
                    GridViewStock.DataBind();
                }
            }
        }
    }
}
