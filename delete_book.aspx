<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="delete_book.aspx.cs" Inherits="TestGridView.delete_book" %>

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
        
        
        <h3>Book ID: &emsp;<asp:TextBox runat="server" ID="Id"></asp:TextBox> </h3><br><br>
            <asp:Button ID="DeleteButton" runat="server" Text="Delete Book" OnClick="DeleteButton_Click" />
        
    <asp:Button runat="server" OnClick="clear" Text="Clear"/>
    

            
    </div>
    </div>
        </div>
       
           
</asp:Content>
