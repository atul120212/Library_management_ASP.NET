<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_data.aspx.cs" Inherits="TestGridView.edit_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Navbar {
            background-color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px 70px;
            height: auto;
            width: auto;
            border-radius: 10px;
        }

        .row {
            display: flex;
        }


        .column1 {
            flex: 50%;
        }

        .column2 {
            flex: 50%;
        }

        .container {
            position: relative;
            background: white;
            border-radius: 0;
            width: auto;
            height: auto;
            padding: 20px;
            margin: 20px;
            box-shadow: 2px 2px 0 black;
        }

        img {
            filter: drop-shadow(0 3px 0 black);
            margin-top: 70px;
            margin-left: 190px;
        }


        a {
            text-align: center;
            text-decoration-color: black;
            color: black;
            text-decoration: none;
        }

        .mGrid {
            width: 330px;
            padding: 20px;
            min-height: 30px;
            border: 2px solid #dcdcdc;
            margin-left: 35px;
            margin-right: auto;
        }
    </style>
</head>
<body style="background-color: grey;">

    <form id="form1" runat="server">
        <div class="Navbar">
            <a href="Login.aspx">Home</a>
            <a href="Login.aspx">Adminstrator</a>
            <a href="Login.aspx">Library Mmmber</a>
            <a href="Login.aspx">Book Details</a>
            <a href="AboutUs.aspx">About Us</a>
            <a href="ContactUs.aspx">Contact Us</a>

        </div>

        <div class="row">
            <div class="column1">
                <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto" />
            </div>
            <div class="column2" style="color: blue; margin-top: 50px">
                <div class="container">
                    <h1>Update Book details</h1>

                    <asp:GridView ID="gvBook" runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="Id"
                        OnRowCancelingEdit="gvBook_RowCancelingEdit"
                        OnRowEditing="gvBook_RowEditing"
                        OnRowDeleting="gvBook_RowDeleting"
                        OnRowUpdating="gvBook_RowUpdating"
                        AllowPaging="True"
                        CssClass="mGrid"
                        PagerStyle-CssClass="pgr"
                        AlternatingRowStyle-CssClass="alt"
                        Width="90%" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="gvBook_SelectedIndexChanged">
                        <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                        <Columns>

                            <asp:TemplateField HeaderText="Id" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1%>
                                </ItemTemplate>

                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="bookName">
                                <ItemTemplate>
                                    <%#Eval("bookName")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="bookName" runat="server" Text='<%#Eval("bookName") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="author">
                                <ItemTemplate>
                                    <%#Eval("author")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="author" runat="server" Text='<%#Eval("author") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                             
                            <asp:TemplateField HeaderText="myimg">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                </FooterTemplate>
                                <HeaderTemplate>
                                    myimg
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl='<%# Bind("myimg") %>' Width="40px" />
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:CommandField ItemStyle-HorizontalAlign="Center" ControlStyle-Width="20px" ControlStyle-Height="22px" ShowEditButton="true" ButtonType="Image" EditImageUrl="Assets/edit.png" UpdateImageUrl="Assets/check.png"
                                CancelImageUrl="Assets/cross.png" HeaderText="Edit">

                                <ControlStyle Height="22px" Width="20px"></ControlStyle>

                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:CommandField>

                            <asp:CommandField ItemStyle-HorizontalAlign="Center" ControlStyle-Width="20px" ControlStyle-Height="22px" ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="Assets/trash.png" HeaderText="Delete">
                                <ControlStyle Height="22px" Width="20px"></ControlStyle>

                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle CssClass="pgr" BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center"></PagerStyle>
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mytestConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>


