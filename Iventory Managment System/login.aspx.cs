using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplicationProj
{

public partial class login : System.Web.UI.Page
{
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string email = EmailTextBox.Text;
        string password = PasswordTextBox.Text;

        if (ValidateLogin(email, password))
        {
            // Redirect based on ManagerID
            if (IsManager(email))
            {
                Response.Redirect("EmployeeDashboard.aspx");
            }
            else
            {
                Response.Redirect("ManagerDashboard.aspx");
            }
        }
        else
        {
                ShowErrorMessage("Invalid credentials. Please try again.");
        }

    }

        private void ShowErrorMessage(string message)
        {
            ErrorLabel.Text = message;
            ErrorLabel.Visible = true;
        }
        private bool ValidateLogin(string email, string password)
    {
        using (SqlConnection connection = DBConnection.GetConnection())
        {
            connection.Open();
            string query = "SELECT * FROM Employee WHERE empEmail = @Email AND empPassword = @Password";
            
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    return reader.HasRows;
                }
            }
        }
    }

    private bool IsManager(string email)
    {
        using (SqlConnection connection = DBConnection.GetConnection())
        {
            connection.Open();
            string query = "SELECT ManagerID FROM Employee WHERE empEmail = @Email";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Email", email);

                object managerID = command.ExecuteScalar();
                return (managerID != null && managerID != DBNull.Value);
            }
        }
    }
}

}