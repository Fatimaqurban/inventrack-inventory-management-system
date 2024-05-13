using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplicationProj
{
    public partial class ProductCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewBinding();
            }
        }

        private void GridViewBinding()
        {
            using (SqlConnection conn = DBConnection.GetConnection())
            {
                conn.Open();
                string CustQuery = "SELECT C.custID, C.custName, P.prodID, CAT.catgName AS ProductCategory, P.prodDescrp AS ProductDescription, P.prodPrice AS ProductPrice, S.stockLevel AS ProductStockLevel " +
                   "FROM Product P " +
                   "INNER JOIN Category CAT ON P.catgID = CAT.catgID " +
                   "INNER JOIN Customer C ON P.custID = C.custID " +
                   "INNER JOIN Stock S ON P.stockID = S.stockID";



                using (SqlCommand comm = new SqlCommand(CustQuery, conn))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(comm);
                    DataTable table = new DataTable();
                    adapter.Fill(table);

                    gridview.DataSource = table;
                    gridview.DataBind();
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewBinding();
        }






    }
}