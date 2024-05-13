using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplicationProj
{


        public partial class DeleteEmployee : System.Web.UI.Page
        {
            protected void btnDeleteEmployee_Click(object sender, EventArgs e)
            {
                // Get employee ID from the form
                int employeeID;
                if (!int.TryParse(txtEmployeeID.Text, out employeeID))
                {
                    // Handle invalid input (non-integer value)
                   lblMessage.Text = "Invalid Employee ID. Please enter a valid integer.";
                    lblMessage.Visible = true;
                    return;
                }

                // Delete the employee from the database
                if (DeleteEmployeeFromDatabase(employeeID))
                {
                    // Display a success message
                   lblMessage.Text = "Employee deleted successfully.";
                   lblMessage.Visible = true;
                    Response.AddHeader("REFRESH", "2;URL=managerDashboard.aspx");

                }
                else
                {
                   lblMessage.Text = "Error deleting employee.";
                   lblMessage.Visible = true;
                }
            }

            private bool DeleteEmployeeFromDatabase(int employeeID)
            {
                using (SqlConnection connection = DBConnection.GetConnection())
                {
                    try
                    {
                        connection.Open();

                        // SQL query to delete the employee from the database
                        string query = "DELETE FROM Employee WHERE employeeID = @EmployeeID";

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Add parameter to prevent SQL injection
                            command.Parameters.AddWithValue("@EmployeeID", employeeID);

                            // Execute the query
                            command.ExecuteNonQuery();
                        }

                        return true;
                    }
                    catch (Exception ex)
                    {
                        // Handle the exception (log or display an error message)
                        return false;
                    }
                }
            }
        }
    }

