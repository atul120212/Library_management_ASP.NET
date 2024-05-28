<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestGridView.Login" %>

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
                    <h1>Welcome to the Library Login</h1>
                    <div style="margin-left: 40px">
                        <h3>Login Name: &emsp; &emsp;
                            <asp:TextBox runat="server" ID="username"> </asp:TextBox>
                        </h3>
                        <br>
                        <br>

                        <h3>Password: &emsp; &emsp;  &emsp;
                            <asp:TextBox runat="server" TextMode="Password" ID="password"> </asp:TextBox>
                        </h3>
                        <br>
                        <br>
                        <div style="margin-left: 150px">
                            <asp:Button runat="server" OnClick="btnSumbit" Text="Submit" />
                            <asp:Button runat="server" OnClick="clear" Text="Clear" />
                        </div>
 
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
