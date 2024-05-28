<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestGridView.aspx.cs" Inherits="TestGridView.TestGridView" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" />
        <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
        <asp:Button runat="server" OnClick="btnSumbit" Text="Submit"/>
        <% Response.Write("Welcome"); %>
    </div>
    </form>
</body>
</html>
