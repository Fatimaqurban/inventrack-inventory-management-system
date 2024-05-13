using System;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        protected void btnUpdateEmployee_Click(object sender, EventArgs e)
        {
            // Get values from the form
            int employeeID = Convert.ToInt32(txtEmployeeID.Text);
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string employeeShift = txtEmployeeShift.Text;
            string email = txtEmployeeEmail.Text;
            string password = txtEmployeePassword.Text;

            // Validate if required fields are not empty
            if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(lastName) ||
                string.IsNullOrEmpty(employeeShift) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                // Handle validation error (you can display an error message or redirect back to the form)
                return;
            }

            // Update the employee in the database
            if (UpdateEmployeeInDatabase(employeeID, firstName, lastName, employeeShift, email, password))
            {
                // Display a success message
               lblMessage.Text = "Employee updated successfully.";
                lblMessage.Visible = true;

                Response.Redirect("managerDashboard.aspx");
            }
            else
            {
               lblMessage.Text = "Error updating employee.";
                lblMessage.Visible = true;

            }
        }

        private bool UpdateEmployeeInDatabase(int employeeID, string firstName, string lastName, string employeeShift, string email, string password)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to update the employee in the database
                    string query = "UPDATE Employee SET empShift = @EmployeeShift, empFName = @FirstName, empLName = @LastName, empEmail = @Email, empPassword = @Password WHERE employeeID = @EmployeeID";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@EmployeeID", employeeID);
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@EmployeeShift", employeeShift);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Password", password);

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
