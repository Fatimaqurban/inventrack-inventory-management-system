<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WebApplicationProj.ProductList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product List</title>
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
        }
                 nav {
            background-color: darkblue;
            padding: 5px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            margin: 5px;
        }
        h2 {
            color: #007bff;
            text-align: center;
        }

        .details-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .details-table th, .details-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .details-table th {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
       <nav style="background-color: darkblue; padding: 5px;">
       <a href="EmployeeDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a>
   </nav>
    <form id="form2" runat="server">
        <div class="container">
            <h2>Product List</h2>
           
            <asp:GridView ID="GridViewProduct" runat="server" CssClass="details-table" AutoGenerateColumns="False" DataKeyNames="prodID">
                <Columns>
                    <asp:BoundField DataField="prodID" HeaderText="Product ID" SortExpression="prodID" ReadOnly="True" />
                    <asp:BoundField DataField="stockID" HeaderText="Stock ID" SortExpression="stockID" />
                    <asp:BoundField DataField="catgID" HeaderText="Category ID" SortExpression="catgID" />
                    <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
                    <asp:BoundField DataField="prodDescrp" HeaderText="Product Description" SortExpression="prodDescrp" />
                    <asp:BoundField DataField="prodPrice" HeaderText="Product Price" SortExpression="prodPrice" />
                    <asp:BoundField DataField="quantity" HeaderText="Product Quantity" SortExpression="quantity" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
