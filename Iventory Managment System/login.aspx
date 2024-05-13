<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationProj.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - InvenTrack</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; text-align: center; padding: 50px;">
    
    &nbsp;<asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>

    <form id="form1" runat="server" style="max-width: 400px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
             <img src="inventrack.png" alt="InvenTrack Logo" style="height: 160px; width: 374px" />
        <h2 style="color: #333;">Login</h2>

        <label for="EmailTextBox" style="display: block; margin-bottom: 8px; color: #555;">Email:</label>
        <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Enter your email" CssClass="form-control" style="padding: 10px; box-sizing: border-box; margin-bottom: 20px;" Width="350px" />

        <label for="PasswordTextBox" style="display: block; margin-bottom: 8px; color: #555;">Password:</label>
        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" placeholder="Enter your password" CssClass="form-control" style="padding: 10px; box-sizing: border-box; margin-bottom: 20px;" Width="350px" />

        <br />

        <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="LoginButton_Click" style="padding: 10px; box-sizing: border-box; background-color: #007bff; border: 1px solid #007bff; color: #fff; border-radius: 4px; cursor: pointer;" Width="236px" />

    </form>

</body>
</html>
