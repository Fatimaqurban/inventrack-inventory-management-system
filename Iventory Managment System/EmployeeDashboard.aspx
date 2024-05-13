<%@ Page Title="Employee Dashboard" Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="WebApplicationProj.EmployeeDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-weight: bold;
            background-color: #f4f4f4;
            font-weight: bolder;
            text-align: center;
            padding: 20px;
            margin: 0;
            height: 359px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 567px;
        }

        h1 {
            color: #333;
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

        .action-button {
            padding: 10px;
            box-sizing: border-box;
            background-color: #007bff;
            border: 1px solid #007bff;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
            margin-bottom: 10px;
            width: 70%;
            max-width: 250px;
            margin-top: 35px;
        }
    </style>
</head>
<body>
    <nav style="background-color: darkblue; padding: 5px;">
        <a href="EmployeeDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a>
    </nav>
    <form id="form1" runat="server">
        <h1>Employee Dashboard</h1>
       
        <!-- Buttons for different actions -->
        <asp:Button ID="btnProductList" runat="server" Text="Product List" OnClick="btnProductList_Click" CssClass="action-button" />
        <asp:Button ID="btnStockList" runat="server" Text="Stock List" OnClick="btnStockList_Click" CssClass="action-button" />
        <asp:Button ID="btnStockReport" runat="server" Text="Stock Report" OnClick="btnStockReport_Click" CssClass="action-button" />
        <asp:Button ID="btnAddProductToInventory" runat="server" Text="Add Product To the Inventory" OnClick="btnAddProductToInventory_Click" CssClass="action-button" />
        <asp:Button ID="btnDeleteProductFromInventory" runat="server" Text="Delete Product From  Inventory" OnClick="btnDeleteProductFromInventory_Click" CssClass="action-button" />
        <asp:Button ID="btnOrderStock" runat="server" Text="Order Stock" OnClick="btnOrderStock_Click" CssClass="action-button" />

    </form>
    <p>
        &nbsp;</p>
</body>
</html>
