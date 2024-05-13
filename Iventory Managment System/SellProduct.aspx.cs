using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplicationProj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddRecord_Click(object sender, EventArgs e)
        {
            int customerID = Convert.ToInt32(custID.Text);
            int productID = Convert.ToInt32(prodID.Text);
            string productName = prodName.Text;
            decimal productPrice = Convert.ToDecimal(prodPrice.Text);


            if (!int.TryParse(quantity.Text, out int Q))
            {
                Response.Write("Please enter a valid quantity.");
                return;
            }
            Response.Write($"Debug: custID = {customerID}");
            string custQuery = "SELECT * FROM Product WHERE custID = @custID";

            using (SqlConnection conn = DBConnection.GetConnection())
            {
                using (SqlCommand Comm = new SqlCommand(custQuery, conn))
                {
                    Comm.Parameters.Add("@custID", SqlDbType.Int).Value = customerID;
                    //Comm.Parameters.AddWithValue("@custID", customerID);
                    conn.Open();
                    SqlDataReader reader = Comm.ExecuteReader();
                    try
                    {
                        if (!reader.HasRows)
                        {
                            reader.Close();

                            string prodQuery = "SELECT * FROM Product WHERE prodID = @prodID";
                            using (SqlCommand pComm = new SqlCommand(prodQuery, conn))
                            {
                                pComm.Parameters.AddWithValue("@prodID", productID);
                                reader = pComm.ExecuteReader();

                                if (reader.HasRows)
                                {
                                    reader.Close();
                                    decimal totalAmount = productPrice * Q;

                                    string insertQuery = "INSERT INTO SalesOrder (custID, prodID, quantity, totalAmount) VALUES (@custID, @prodID, @quantity, @totalAmount)";
                                    using (SqlCommand insertCom = new SqlCommand(insertQuery, conn))
                                    {
                                        insertCom.Parameters.AddWithValue("@custID", customerID);
                                        insertCom.Parameters.AddWithValue("@prodID", productID);
                                        insertCom.Parameters.AddWithValue("@quantity", Q);
                                        insertCom.Parameters.AddWithValue("totalAmount", totalAmount);
                                        insertCom.ExecuteNonQuery();

                                        string updateQuery = "UPDATE Product SET quantity = quantity - @quantity WHERE prodID = @prodID";
                                        using (SqlCommand updateCom = new SqlCommand(updateQuery, conn))
                                        {
                                            updateCom.Parameters.AddWithValue("@prodID", productID);
                                            updateCom.Parameters.AddWithValue("@quantity", Q);
                                            updateCom.ExecuteNonQuery();
                                        }
                                        Response.Write("Product Sold and record updated.");
                                    }
                                }
                                else
                                {
                                    Response.Write("No such product exists in inventory.");
                                }

                            }
                        }
                        else
                        {
                            Response.Write("Customer does not exist.");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"Error: {ex.Message}");
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
            }


        }

        protected void Back_Click(object sender, EventArgs e)
        {

        }
    }
}