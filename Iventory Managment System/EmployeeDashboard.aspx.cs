using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProj
{
    public partial class EmployeeDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your initialization code, if any
        }

        protected void btnProductList_Click(object sender, EventArgs e)
        {
            // Redirect to the ProductList page
            Response.Redirect("ProductList.aspx");
        }

        protected void btnStockList_Click(object sender, EventArgs e)
        {
            // Redirect to the StockList page
            Response.Redirect("StockList.aspx");
        }

        protected void btnStockReport_Click(object sender, EventArgs e)
        {
            // Redirect to the SalesReport page
            Response.Redirect("StockReport.aspx");
        }

        protected void btnAddProductToInventory_Click(object sender, EventArgs e)
        {
            // Redirect to the InventoryReport page
            Response.Redirect("AddProduct.aspx");
        }
        protected void btnDeleteProductFromInventory_Click(object sender, EventArgs e)
        {
            // Redirect to the InventoryReport page
            Response.Redirect("DeleteProductFromInventory.aspx");
        }
        protected void btnOrderStock_Click(object sender, EventArgs e)
        {
            // Redirect to the InventoryReport page
            Response.Redirect("OrderStock.aspx");
        }
    }
}
