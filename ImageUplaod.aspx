<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageUplaod.aspx.cs" Inherits="TestGridView.ImageUplaod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Book Name: &emsp; &emsp; <asp:TextBox runat="server" ID="bookName"> </asp:TextBox> </h3><br><br>
            
        <h3>Author: &emsp; &emsp;  &emsp;<asp:TextBox runat="server" ID="author"></asp:TextBox> </h3><br><br>
    <asp:FileUpload ID="fuUpload" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />
<hr />
<asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Image Id" />
        <asp:BoundField DataField="bookName" HeaderText="bookName" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<div id="dialog" style="display: none">
</div>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
