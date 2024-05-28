<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="TestGridView.AboutUs" %>

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
        h3 a {
            text-align: center;
            margin:150px;
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color: grey;">

    <form id="form1" runat="server">
        <div class="Navbar">
            <a href="welcome_user.aspx">Home</a>
            <a href="add_book.aspx">Add Books</a>
            <a href="book_details.aspx">Book Details</a>
            <a href="AboutUs.aspx">About Us</a>
            <a href="ContactUs.aspx">Contact Us</a>
            <a href="logout.aspx">Logout</a>

        </div>

        <div>
                About Us
        <h3><a href="Login.aspx" style="text-align: center; color:blue; margin-left:500px; margin-top:50%">Login here</a></h3>
        </div>

    </form>
</body>
</html>
