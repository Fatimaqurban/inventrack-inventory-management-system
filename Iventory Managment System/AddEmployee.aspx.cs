using System;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            // Get values from the form
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

            // Add the employee to the database
            if (AddEmployeeToDatabase(firstName, lastName, employeeShift, email, password, managerID: 1))
            {
                // Display success message
                lblMessage.Text = "Employee added successfully!";
                lblMessage.Visible = true;

                // Redirect to managerDashboard.aspx after a delay (for visibility of the success message)
                Response.AddHeader("REFRESH", "2;URL=managerDashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Error adding employee. Please try again.";
                lblMessage.Visible = true;
            }
        }

        private bool AddEmployeeToDatabase(string firstName, string lastName, string employeeShift, string email, string password, int managerID)
        {
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                try
                {
                    connection.Open();

                    // SQL query to insert the employee into the database
                    string query = "INSERT INTO Employee (empShift, empFName, empLName, empEmail, empPassword, ManagerID) " +
                                   "VALUES (@EmployeeShift, @FirstName, @LastName, @Email, @Password, @ManagerID)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@EmployeeShift", employeeShift);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Password", password);
                        command.Parameters.AddWithValue("@ManagerID", managerID);

                        // Execute the query
                        command.ExecuteNonQuery();
                    }

                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }
    }
}
