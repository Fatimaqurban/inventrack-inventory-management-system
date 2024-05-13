using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class PurchaseOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductData();
            }
        }

        private void BindProductData()
        {
            // Retrieve connection string from web.config
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                // Define SQL query
                string query = "SELECT prchsID, stockID, supplierID, pOPayMethod, prchsDate FROM PurchaseOrder";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the query and bind data to GridView
                    GridViewPurchaseOrder.DataSource = command.ExecuteReader();
                    GridViewPurchaseOrder.DataBind();
                }
            }
        }
    }
}
