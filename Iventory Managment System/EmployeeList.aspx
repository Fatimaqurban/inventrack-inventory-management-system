<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="WebApplicationProj.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees</title>
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

        .btn-addEmp {
            background-color: #28a745;
        }
    </style>
</head>
<body>
        <nav style="background-color: darkblue; padding: 5px;">
        <a href="ManagerDashboard.aspx" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="Login.aspx" class="logout-button" style="color: #fff; text-decoration: none; padding: 10px; margin: 5px;">Logout</a>
</nav>
    <form id="form2" runat="server">
        <div class="container">
            <h2>Employee Record</h2>

            <asp:GridView ID="GridViewEmployee" runat="server" CssClass="grid-view" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="employeeID" HeaderText="Employee ID" />
                    <asp:BoundField DataField="empShift" HeaderText="Shift" />
                    <asp:BoundField DataField="empFname" HeaderText="First Name" />
                    <asp:BoundField DataField="empLname" HeaderText="Last Name" />
                    <asp:BoundField DataField="empEmail" HeaderText="Email" />
                    <asp:BoundField DataField="empPassword" HeaderText="Password" />
                    <asp:BoundField DataField="ManagerID" HeaderText="Manager ID" />
                </Columns>
            </asp:GridView>

            <br />

        </div>
    </form>
</body>
</html>
