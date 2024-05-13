using System;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve values from textboxes
                string productName = txtProductName.Text;
                string productDescription = txtProductDescription.Text;
                decimal productPrice = Convert.ToDecimal(txtProductPrice.Text);
                int categoryID = Convert.ToInt32(txtCategoryID.Text);
                int stockID = Convert.ToInt32(txtStockID.Text);
                int quantity = Convert.ToInt32(txtQuantity.Text);

                // Validate if required fields are not empty
                if (string.IsNullOrEmpty(productName) || string.IsNullOrEmpty(productDescription) || quantity <= 0)
                {
                    // Handle validation error (you can display an error message or redirect back to the form)
                   // lblMessage.Text = "Please fill in all the required fields.";
                    //lblMessage.Visible = true;
                    return;
                }

                // Insert data into the Product table
                if (AddProductToDatabase(stockID, categoryID, productName, productDescription, productPrice, quantity))
                {
                    // Display success message
                   // lblMessage.Text = "Product added successfully!";
                   // lblMessage.Visible = true;

                    // Redirect to ProductList.aspx after a delay (for visibility of the success message)
                    Response.AddHeader("REFRESH", "2;URL=ProductList.aspx");
                }
                else
                {
                   // lblMessage.Text = "Error adding product. Please try again.";
                  //  lblMessage.Visible = true;
                }
            }
            catch (Exception ex)
            {
                // Log the exception for debugging
             //   lblMessage.Text = "An error occurred. Please try again.";
              //  lblMessage.Visible = true;
            }
        }

        private bool AddProductToDatabase(int stockID, int categoryID, string productName, string productDescription, decimal productPrice, int quantity)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to insert the product into the database
                    string productInsertQuery = "INSERT INTO Product (stockID, catgID, prodName, prodDescrp, prodPrice, quantity) " +
                                               "VALUES (@stockID, @catgID, @prodName, @prodDescrp, @prodPrice, @quantity)";

                    using (SqlCommand command = new SqlCommand(productInsertQuery, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@stockID", stockID);
                        command.Parameters.AddWithValue("@catgID", categoryID);
                        command.Parameters.AddWithValue("@prodName", productName);
                        command.Parameters.AddWithValue("@prodDescrp", productDescription);
                        command.Parameters.AddWithValue("@prodPrice", productPrice);
                        command.Parameters.AddWithValue("@quantity", quantity);

                        // Execute the query
                        command.ExecuteNonQuery();
                    }

                    // Update Stock table
                    string stockUpdateQuery = "UPDATE Stock SET stockLevel = stockLevel + 1 WHERE stockID = @stockID";

                    using (SqlCommand command = new SqlCommand(stockUpdateQuery, connection))
                    {
                        command.Parameters.AddWithValue("@stockID", stockID);
                        command.Parameters.AddWithValue("@quantity", quantity);
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
