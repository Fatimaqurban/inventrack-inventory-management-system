using System;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEmployeeData();
            }
        }

        private void BindEmployeeData()
        {
            // Retrieve connection string from web.config
            using (SqlConnection connection = DBConnection.GetConnection())
            {
                // Define SQL query
                string query = "SELECT employeeID, empShift, empFName, empLName, empEmail, empPassword, managerID FROM Employee";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the query and bind data to GridView
                    GridViewEmployee.DataSource = command.ExecuteReader();
                    GridViewEmployee.DataBind();
                }
            }
        }
    }
}
