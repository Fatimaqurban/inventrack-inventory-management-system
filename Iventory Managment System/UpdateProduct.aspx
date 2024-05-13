<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="YourNamespace.UpdateProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Product</title>
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
    <form id="form1" runat="server">
        <div class="container">
            <h2>Update Product</h2>
            <div class="form-group">
                <label for="txtProductID" style="color: #333;">Product ID:</label>
                <asp:TextBox ID="txtProductID" runat="server" CssClass="form-control" Enabled="false" />
            </div>
            <div class="form-group">
                <label for="txtProductName" style="color: #333;">Product Name:</label>
                <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtDescription" style="color: #333;">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" />
            </div>
            <div class="form-group">
                <label for="txtPrice" style="color: #333;">Price:</label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtStock" style="color: #333;">Stock Level:</label>
                <asp:TextBox ID="txtStock" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnUpdateProduct" runat="server" Text="Update Product" OnClick="btnUpdateProduct_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
