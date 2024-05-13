using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class ProductList : System.Web.UI.Page
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
                string query = "SELECT prodID,stockID, catgID,  prodName, prodDescrp, prodPrice, quantity FROM Product";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the query and bind data to GridView
                    GridViewProduct.DataSource = command.ExecuteReader();
                    GridViewProduct.DataBind();
                }
            }
        }
    }
}
