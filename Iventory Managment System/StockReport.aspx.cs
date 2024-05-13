using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplicationProj
{
    public partial class StockReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportData();
            }
        }

        private void ReportData()
        {
            using (SqlConnection conn = DBConnection.GetConnection())
            {
                conn.Open();
                string Query = "SELECT sr.stockID, sr.dateGenerated as dateGen, p.prodName as prdctSale, p.prodPrice as prdctPrice " +
                               "FROM StockReport sr " +
                               "JOIN Stock s ON sr.stockID = s.stockID " +
                               "JOIN Product p ON s.stockID = p.stockID ";
                using (SqlCommand comm = new SqlCommand(Query, conn))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            DataTable table = new DataTable();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                table.Columns.Add(reader.GetName(i), reader.GetFieldType(i));
                            }

                            while (reader.Read())
                            {
                                DataRow row = table.NewRow();
                                for (int i = 0; i < reader.FieldCount; i++)
                                {
                                    row[i] = reader[i];
                                }
                                table.Rows.Add(row);
                            }

                            GridView1.DataSource = table;
                            GridView1.DataBind();
                        }
                    }


                }

            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "MyCustomCommand")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                string stockID = GridView1.DataKeys[rowIndex].Values["stkID"].ToString();

            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            decimal totalAmount = 0;
            foreach (GridViewRow r in GridView1.Rows)
            {
                int prodIndex = -1;
                foreach (DataControlField df in GridView1.Columns)
                {
                    if (df.HeaderText == "Products Sold")
                    {
                        prodIndex = GridView1.Columns.IndexOf(df);
                        break;
                    }
                }

                string prodSText = r.Cells[prodIndex].Text;

                if (decimal.TryParse(prodSText, out decimal productsSold))
                {
                    totalAmount += productsSold;
                }
            }
            //Label3.Text = totalAmount.ToString("C");
        }
    }
}