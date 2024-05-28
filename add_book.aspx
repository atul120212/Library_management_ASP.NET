<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="add_book.aspx.cs" Inherits="TestGridView.add_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="styles/addBook.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="row">
        <div class="column1">
        <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto"/>
                </div>
    <div class="column2" style="color:blue; margin-top:50px">
    <div class="container">
        <h1>Add your book here</h1>
        <div style="margin-left:40px">
        <h3>Book Name: &emsp; &emsp; <asp:TextBox runat="server" ID="bookName"> </asp:TextBox> </h3><br><br>
        <h3>Author: &emsp; &emsp;  &emsp;<asp:TextBox runat="server" ID="author"></asp:TextBox> </h3><br><br>
        <div>

            <table style="width:100%;">  
            <tr>  
                <td class="style1">  
                     </td>  
                <td>  
                     </td>  
                <td>  
                     </td>  
            </tr>  
            <tr>  
                <td class="style1">  
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" />  
 </td>  
                 
            </tr>  
            <tr>  
                <td class="style1">  
                    <asp:Label ID="Label1" runat="server"></asp:Label>  
                </td>  
                  
            </tr>  
            <tr>  
                <td class="style1">  
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />  
                </td>  
                  
            </tr>  
        </table>  
           
        </div>
            <div style="margin-left:150px">
            <asp:Button runat="server" OnClick="AddBook" Text="Submit"/>
            <asp:Button runat="server" OnClick="clear" Text="Clear"/>
        </div>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>

    </div>
    </div>
        </div>
        
        
</asp:Content>