<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurchaseOrder.aspx.cs" Inherits="WebApplicationProj.PurchaseOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase Order</title>
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

        .total-amount {
            font-weight: bold;
            color: #28a745;
        }

        .purchase-order-status {
            color: #dc3545;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Purchase Order</h2>
            <asp:GridView ID="GridViewPurchaseOrder" runat="server" CssClass="details-table" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="prchsID" HeaderText="Purchase Order ID" />
                    <asp:BoundField DataField="stockID" HeaderText="Stock ID" />
                    <asp:BoundField DataField="supplierID" HeaderText="Supplier ID" />
                    <asp:BoundField DataField="pOPayMethod" HeaderText="Payment method" />
                    <asp:BoundField DataField="prchsDate" HeaderText="Purchase Date" DataFormatString="{0:yyyy-MM-dd}" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
