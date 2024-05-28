<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="update_data.aspx.cs" Inherits="TestGridView.update_data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="styles/update_data.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="column1">
                <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto" />
            </div>
            <div class="column2" style="color: blue; margin-top: 50px">
                <div class="container">
                    <h1>Update Book details</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        Book ID
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="bookName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txteditname" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtaddname" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Book Name
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="author">
                    <EditItemTemplate>
                        <asp:TextBox ID="txteditauthor" runat="server" Text='<%# Bind("author") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtaddauthor" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Author
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("author") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="myimg">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        Book Cover
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl='<%# Bind("myimg") %>' Width="40px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="update">
                    <EditItemTemplate>
                        <asp:Button ID="Button3" runat="server" CommandName="UPDATE" Text="UPDATE" />
                        <asp:Button ID="Button4" runat="server" CommandName="CANCEL" Text="CANCEL" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="Button5" runat="server" CommandName="ADD" Text="ADD" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        ACTION
                    </HeaderTemplate>
                    <ItemTemplate>

                        <asp:Button ID="Button1" runat="server" CommandName="EDIT" Text="EDIT" />
                        <asp:Button ID="Button2" runat="server" CommandName="DELETE" Text="DELETE" />
                    </ItemTemplate>

                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
                    </div>
        </div>
        </div>
    </asp:Content>
