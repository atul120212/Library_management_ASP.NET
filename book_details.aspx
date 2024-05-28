<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="book_details.aspx.cs" Inherits="TestGridView.book_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="styles/bookDetails.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="column1">
        <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto"/>
                </div>
    <div class="column2" style="color:blue; margin-top:50px">
    <div class="container">
        <h1>Details of Books</h1>
        <h3><a href="delete_book.aspx">Delete Books</a> &emsp; &emsp; <a href="add_book.aspx">add book</a></h3>
        <div style="margin-left:40px">
        <div class="data">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="bookName" HeaderText="bookName" SortExpression="bookName" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField ControlStyle-Height="100px" ControlStyle-Width="100px" DataImageUrlField="myimg" HeaderText="myimg">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mytestConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
    </div>
        </div>
    </div>
    </div>
        </div>
        </asp:Content>
