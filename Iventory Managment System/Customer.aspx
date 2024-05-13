<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="WebApplicationProj.ProductCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #007bff;
        }
        a{
            margin-left:auto;
        }
        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .grid-view th, .grid-view td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .grid-view th {
            background-color: #007bff;
            color: #fff;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn-update {
            background-color: #28a745;
        }

        .btn-delete {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <nav style="background-color: darkblue; padding: 5px; height: 40px;">
        <a href="ManagerDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a></nav>
        <div class="container">
            <h2>Customer Record</h2>
             <div>
            </div>
            <asp:GridView ID="gridview" runat="server" CssClass="grid-view" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"  DataKeyNames="prodID,custID">
                <Columns>
                    <asp:BoundField DataField="custID" HeaderText="Customer ID" />
                    <asp:BoundField DataField="custName" HeaderText="Customer Name" />
                    <asp:BoundField DataField="ProdID" HeaderText="Product ID" />
                    <asp:BoundField DataField="ProductCategory" HeaderText="Product Category" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" />
                    <asp:BoundField DataField="ProductStockLevel" HeaderText="Product Stock Level" />
                </Columns>
            </asp:GridView>
           
            
            <br />
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>

