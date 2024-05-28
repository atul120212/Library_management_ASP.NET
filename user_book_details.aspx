<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="user_book_details.aspx.cs" Inherits="TestGridView.user_book_details" %>

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
        <h1>Details of Books</h1>
        <h3><a href="issue_book.aspx">Click to issue new Book</a><br /><br />
        <div style="margin-left:40px">
        <div class="data">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="bookName" HeaderText="bookName" SortExpression="bookName" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:ImageField ControlStyle-Height="100px" ControlStyle-Width="100px" DataImageUrlField="myimg" HeaderText="myimg">
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mytestConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
    </div>
        </div>
    </div>
    </div>
        </div>
        </asp:Content>