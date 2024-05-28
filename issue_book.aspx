<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="issue_book.aspx.cs" Inherits="TestGridView.issue_book" %>

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
    </style>
</head>
<body style="background-color: grey;">

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
                <img style="" src="Assets/img.jpg" alt="img" width="auto" height="auto" />
            </div>
            <div class="column2" style="color: blue; margin-top: 50px">
                <div class="container">
                    <h3>Book ID: &emsp;<asp:TextBox runat="server" ID="Id"></asp:TextBox> </h3><br><br>
        
                    <div class="data">
    <asp:PlaceHolder ID = "book" runat="server" />
    </div>
    
                </div>
            </div>
        </div>

    </form>
</body>
</html>
