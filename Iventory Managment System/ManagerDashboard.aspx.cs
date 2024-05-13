using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProj
{
    public partial class ManagerDashboard : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your initialization code, if any
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            // Redirect to the AddEmployee page
            Response.Redirect("AddEmployee.aspx");
        }

        protected void btnUpdateEmployee_Click(object sender, EventArgs e)
        {
            // Redirect to the UpdateEmployee page
            Response.Redirect("UpdateEmployee.aspx");
        }

        protected void btnDeleteEmployee_Click(object sender, EventArgs e)
        {
            // Redirect to the DeleteEmployee page
            Response.Redirect("DeleteEmployee.aspx");
        }

        protected void btnListAllEmployees_Click(object sender, EventArgs e)
        {
            // Redirect to the ApproveStockReordering page
            Response.Redirect("EmployeeList.aspx");
        }
        protected void btnListAllCustomer_Click(object sender, EventArgs e)
        {
            // Redirect to the ApproveStockReordering page
            Response.Redirect("Customer.aspx");
        }
    }

}