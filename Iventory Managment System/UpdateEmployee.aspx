<%@ Page Title="Update Employee" Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="WebApplicationProj.UpdateEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
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
            text-align: left;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: black;
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
        <a href="ManagerDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a>
</nav>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div class="container">
            <h2>Update Employee</h2>

            <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional">

                <ContentTemplate>
                    <!-- Employee ID -->
                    <div class="form-group">
                        <label for="txtEmployeeID">Employee ID:</label>
                        <asp:TextBox ID="txtEmployeeID" runat="server" CssClass="form-control" placeholder="Enter employee ID"></asp:TextBox>
                    </div>

                    <!-- First Name -->
                    <div class="form-group">
                        <label for="txtFirstName">First Name:</label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Enter first name"></asp:TextBox>
                    </div>

                    <!-- Last Name -->
                    <div class="form-group">
                        <label for="txtLastName">Last Name:</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Enter last name"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="txtEmployeeShift">Shift:</label>
                        <asp:TextBox ID="txtEmployeeShift" runat="server" CssClass="form-control" placeholder="Enter employee shift"></asp:TextBox>
                    </div>

                    <!-- Employee Username -->
                    <div class="form-group">
                        <label for="txtEmployeeEmail">Email:</label>
                        <asp:TextBox ID="txtEmployeeEmail" runat="server" CssClass="form-control" placeholder="Enter employee Email"></asp:TextBox>
                    </div>

                    <!-- Employee Password -->
                    <div class="form-group">
                        <label for="txtEmployeePassword">Password:</label>
                        <asp:TextBox ID="txtEmployeePassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter employee password"></asp:TextBox>
                    </div>

                    <!-- Update Employee Button -->
                    <asp:Button ID="btnUpdateEmployee" runat="server" Text="Update Employee" OnClick="btnUpdateEmployee_Click" CssClass="btn" />
                       <br />
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text="" Visible="false"></asp:Label>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>

</body>
</html>
