<%@ Page Title="Manager Dashboard" Language="C#" AutoEventWireup="true" CodeBehind="ManagerDashboard.aspx.cs" Inherits="WebApplicationProj.ManagerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-weight:bold;
            background-color: #f4f4f4;
            font-weight: bolder;
            text-align: center;
            padding: 20px;
            margin: 0;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
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
        }
    </style>
</head>
<body>
       <nav style="background-color: darkblue; padding: 5px; height: 40px;">
           <a href="ManagerDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a>
   </nav>
    <form id="form1" runat="server">
        <h1>Manager Dashboard</h1>
        
        <!-- Buttons for different actions -->
        <asp:Button ID="btnAddEmployee" runat="server" Text="Add Employee" OnClick="btnAddEmployee_Click" CssClass="action-button" />
        <asp:Button ID="btnUpdateEmployee" runat="server" Text="Update Employee" OnClick="btnUpdateEmployee_Click" CssClass="action-button" />
        <asp:Button ID="btnDeleteEmployee" runat="server" Text="Delete Employee" OnClick="btnDeleteEmployee_Click" CssClass="action-button" />
        <asp:Button ID="btnListAllEmployees" runat="server" Text="EmployeeList" OnClick="btnListAllEmployees_Click" CssClass="action-button" />
        <asp:Button ID="btnListAllCustomers" runat="server" Text="CustomerList" OnClick="btnListAllCustomer_Click" CssClass="action-button" />

    </form>
</body>
</html>
