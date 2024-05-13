<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderStock.aspx.cs" Inherits="WebApplicationProj.OrderStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order  Stock</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #007bff;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <nav style="background-color: darkblue; padding: 5px;">
        <a href="EmployeeDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a>
    </nav>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Order Stock</h2>

            <div class="form-group">
                <label for="txtSupplierID" style="color: #333;">Supplier ID:</label>
                <asp:TextBox ID="txtSupplierID" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtStockLevel" style="color: #333;">Stock Level:</label>
                <asp:TextBox ID="txtStockLevel" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtStockThreshold" style="color: #333;">Stock Threshold:</label>
                <asp:TextBox ID="txtStockThreshold" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtDateOfDelivery" style="color: #333;">Date of Delivery:</label>
                <asp:TextBox ID="txtDateOfDelivery" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="txtPaymethod" style="color: #333;">Payment Method:</label>
                <asp:TextBox ID="txtPaymethod" runat="server" CssClass="form-control"  />
            </div>
            <div class="form-group">
                <asp:Button ID="btnOrderStock" runat="server" Text="Order Stock" OnClick="btnOrderStock_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
