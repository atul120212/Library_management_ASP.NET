<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="TestGridView.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styles/signup.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="row">
        <div class="column1">
        <img src="Assets/img.jpg" alt="img"/>
                </div>
    <div class="column2">
    <div class="container">
        <h1 style="color:green;">Welcome to the Registration Form</h1>

        <a href="staff_details.aspx">click to see staff details</a>
        
        <div class="details">
        
            <h3>Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="username" style="margin-bottom: 0px"> </asp:TextBox> </h3><br>
            
        <h3>Password: &emsp; &emsp;  &emsp; <asp:TextBox runat="server" ID="password" style="margin-left: 0px"></asp:TextBox> </h3><br>
            <h3>Re-password: &emsp; &emsp; <asp:TextBox runat="server" ID="repassword"> </asp:TextBox> </h3><br>
            
        <h3>Phone: &emsp; &emsp;  &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="phone"></asp:TextBox> </h3><br>
         <h3>Address: &emsp; &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" ID="address"> </asp:TextBox> </h3><br>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

           
               <%-- <asp:ListBox id="ListBox1" 
           Rows="6"
           Width="100px"
           SelectionMode="Single" 
           runat="server">
                    <asp:ListItem>Principle</asp:ListItem>
                    <asp:ListItem>Vice Principle</asp:ListItem>
         <asp:ListItem>Teacher</asp:ListItem>
         <asp:ListItem>Student</asp:ListItem>
         
         <asp:ListItem>Manager</asp:ListItem>
         

      </asp:ListBox>--%>
            <h3>Designation:&emsp; &emsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="designation" runat="server">

<asp:ListItem Enabled="true" Text= "Select" Value= "-1"></asp:ListItem>
<asp:ListItem Text= "Admin" Value="1"></asp:ListItem>
<asp:ListItem Text= "User" Value="2"></asp:ListItem>

</asp:DropDownList>
                </h3>

       <div class="sub"><br />
           <h4>Login <a href="Login.aspx"><U>here</U></a></h4>
           <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <asp:Button runat="server" OnClick="Register" Text="Register"/><br />



            <%--<asp:Button runat="server" OnClick="clear" Text="Clear"/>--%>
        </div>
        </div>
    </div>
    </div>
        </div>
     </asp:Content>   