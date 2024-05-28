<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="staff_details.aspx.cs" Inherits="TestGridView.staff_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styles/staff_details.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="row">
        <div class="column1">
        <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto"/>
            </div>
    <div class="column2" style="color:blue; margin-top:50px">
    <div class="container">
        
        Details of staff<br /><br />
           <a href="delete_staff.aspx">Delete</a><br /><br />
        <div class="data">
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
    </div>

            
    </div>
    </div>
        </div>

            
</asp:Content>


