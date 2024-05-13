using System;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class DeleteProductFromInventory : System.Web.UI.Page
    {
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve values from textboxes
                int productID = Convert.ToInt32(txtProductID.Text);

                // Validate if required fields are not empty
                if (productID <= 0)
                {
                    // Handle validation error (you can display an error message or redirect back to the form)
                    return;
                }

                // Delete product from the database and decrement stock level
                if (DeleteProductFromDatabase(productID))
                {
                    // Display success message or redirect to a different page
                    Response.AddHeader("REFRESH", "2;URL=ProductList.aspx");
                }
                else
                {
                    // Handle deletion error
                }
            }
            catch (Exception ex)
            {
                // Log the exception for debugging
            }
        }

        private bool DeleteProductFromDatabase(int productID)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to delete the product from the database
                    string productDeleteQuery = "DELETE FROM Product WHERE prodID = @productID";

                    using (SqlCommand command = new SqlCommand(productDeleteQuery, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@productID", productID);

                        // Execute the query
                        command.ExecuteNonQuery();
                    }

                    // Update Stock table to decrement stock level
                    string stockUpdateQuery = "UPDATE Stock SET stockLevel = stockLevel - 1 WHERE stockID IN " +
                                              "(SELECT stockID FROM Product WHERE prodID = @productID)";

                    using (SqlCommand command = new SqlCommand(stockUpdateQuery, connection))
                    {
                        command.Parameters.AddWithValue("@productID", productID);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }
                catch (Exception ex)
                {
                    // Log the exception for debugging
                    return false;
                }
            }
        }
    }
}
