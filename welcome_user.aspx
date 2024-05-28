<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome_user.aspx.cs" Inherits="TestGridView.welcome_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> 
.Navbar{
    background-color:white;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 70px;
    height:auto;
    width:auto;
    border-radius:10px;
    
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

.container{
    position:relative;
    background: white;
    border-radius:0;
    color:black;
    font-size:40px;
    width:550px;
    height:300px;
    padding:20px;
    margin:20px;
    box-shadow: 2px 2px 0 black;
}

.container a{
    color:blue;
    font-size:20px;
    margin-left:10px;
}


img{
    filter: drop-shadow(0 3px 0 black);
    margin-top:70px; 
    margin-left:190px
}


a{
    text-align:center;
  text-decoration-color: black;
  color: black;
  text-decoration: none;
}




    </style>
</head>
<body  style="background-color:grey;">

    <form id="form1" runat="server">
        <div class="Navbar">
            <a href="welcome_user.aspx">Home</a>
            
            <a href="issue_book.aspx">Issue Books</a>
            <a href="book_details.aspx">Book Details</a>
            <a href="AboutUs.aspx">About Us</a>
            <a href="ContactUs.aspx">Contact Us</a>
            <a href="logout.aspx">Logout</a>

        </div>
        
    <div class="row">
        <div class="column1">
        <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto"/>
            </div>
    <div class="column2" style="color:blue; margin-top:50px">
    <div class="container">
        
        Welcome user - <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <br />
        
        <a href="user_book_details.aspx">Click to see book details</a><br />
        <a href="issue_book.aspx">Issue new book </a>
            
    </div>
    </div>
        </div>
        <!--<configuration>
  <connectionStrings> 
    <add name="conDB" connectionString="Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True" providerName="System.Data.SqlClient" />
  </connectionStrings>
</configuration>-->
    </form>
</body>
</html>