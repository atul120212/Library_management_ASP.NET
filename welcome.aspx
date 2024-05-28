<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="TestGridView.welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styles/welcome.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="row">
            <div class="column1">
                <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto" />
            </div>
            <div class="column2" style="color: blue; margin-top: 50px">
                <div class="container">
                    Welcome admin -
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <a href="Signup.aspx">Create new staff </a>
                    <br />
                    <a href="staff_details.aspx">Show staff details</a><br />
                    <a href="book_details.aspx">Show book details</a><br />
                    <a href="update_data.aspx">Update book details</a>

                </div>
            </div>
        </div>
</asp:Content>