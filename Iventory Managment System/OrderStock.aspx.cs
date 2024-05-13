using System;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class OrderStock : System.Web.UI.Page
    {
        protected void btnOrderStock_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve values from textboxes
                int stockLevel = Convert.ToInt32(txtStockLevel.Text);
                int thresholdLevel = Convert.ToInt32(txtStockThreshold.Text);
                DateTime dateOfDelivery = Convert.ToDateTime(txtDateOfDelivery.Text);
                string paymentMethod = txtPaymethod.Text;

                // Insert data into the Stock table
                int newStockID = InsertIntoStock(stockLevel, thresholdLevel, dateOfDelivery);

                if (newStockID > 0)
                {
                    // Insert data into the SupplierSuppliesStock table
                    int supplierID = Convert.ToInt32(txtSupplierID.Text);
                    InsertIntoSupplierSuppliesStock(supplierID, newStockID);

                    // Insert data into the PurchaseOrder table
                    InsertIntoPurchaseOrder(supplierID, newStockID, dateOfDelivery, paymentMethod);

                    // Display success message or redirect to a different page
                    Response.Redirect("StockList.aspx");
                }
                else
                {
                    // Handle stock insertion error
                    // Display an error message or take appropriate action
                }
            }
            catch (Exception ex)
            {
                // Log the exception for debugging
                // Display an error message or take appropriate action
            }
        }

        private int InsertIntoStock(int stockLevel, int thresholdLevel, DateTime dateOfDelivery)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to insert into the Stock table
                    string stockInsertQuery = "INSERT INTO Stock (stockLevel, thresholdLevel, purchaseDate) " +
                                              "OUTPUT INSERTED.stockID " +
                                              "VALUES (@stockLevel, @thresholdLevel, @dateOfDelivery)";

                    using (SqlCommand command = new SqlCommand(stockInsertQuery, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@stockLevel", stockLevel);
                        command.Parameters.AddWithValue("@thresholdLevel", thresholdLevel);
                        command.Parameters.AddWithValue("@dateOfDelivery", dateOfDelivery);

                        // Execute the query and retrieve the new stockID
                        return (int)command.ExecuteScalar();
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception for debugging
                    return -1; // Return -1 to indicate an error
                }
            }
        }

        private void InsertIntoSupplierSuppliesStock(int supplierID, int stockID)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to insert into the SupplierSuppliesStock table
                    string supplierSuppliesStockInsertQuery = "INSERT INTO SupplierSuppliesStock (supplierID, stockID) " +
                                                              "VALUES (@supplierID, @stockID)";

                    using (SqlCommand command = new SqlCommand(supplierSuppliesStockInsertQuery, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@supplierID", supplierID);
                        command.Parameters.AddWithValue("@stockID", stockID);

                        // Execute the query
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception for debugging
                    // Handle the exception or display an error message
                }
            }
        }

        private void InsertIntoPurchaseOrder(int supplierID, int stockID, DateTime prchsDate, string pOPayMethod)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to insert into the PurchaseOrder table
                    string purchaseOrderInsertQuery = "INSERT INTO PurchaseOrder (stockID, supplierID, prchsDate, pOPayMethod) " +
                                                      "VALUES (@stockID, @supplierID, @prchsDate, @pOPayMethod)";

                    using (SqlCommand command = new SqlCommand(purchaseOrderInsertQuery, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@stockID", stockID);
                        command.Parameters.AddWithValue("@supplierID", supplierID);
                        command.Parameters.AddWithValue("@prchsDate", prchsDate);
                        command.Parameters.AddWithValue("@pOPayMethod", pOPayMethod);

                        // Execute the query
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception for debugging
                    // Handle the exception or display an error message
                }
            }
        }
    }
}
