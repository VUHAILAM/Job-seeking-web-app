<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recruiter_Login.aspx.cs" Inherits="JobProject.Recruiter_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Top</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/w3.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="w3-container w3-light-grey">
                <h1 class="w3-jumbo">Jop Top!</h1>
                <p class="w3-xxlarge">Find your oppotunies, create your future!!</p>
            </header>
            <div>
                <ul class="w3-navbar w3-blue w3-large">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Your Profile</a></li>
                    <li><a href="#">Search Candidates</a></li>
                    <li><a href="#">Post Job</a></li>
                    <li><a href="#">About us</a></li>
                </ul>
            </div>
            <div class ="w3-row-padding">
                <div class ="w3-quarter">
                    <p></p>
                </div>
                <div class="w3-half">
                    <p><strong>Recruiter Login</strong></p>
                    <div class="w3-form w3-card-4">
                        <h2>Sign In</h2>
                        <div class="w3-group">
                            <label>User name</label>
                            <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>
                        </div>

                        <div class="w3-group">
                            <label>Pass word</label>
                            <asp:TextBox ID="TextBox2" class="w3-input" runat="server"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label1" runat="server" Text="123"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" class="w3-btn w3-teal" runat="server" Text="Login" OnClick="Button1_Click"/>
                        &nbsp
                        <asp:HyperLink ID="HyperLink1" runat="server">Forget password??</asp:HyperLink>
                    </div>
                    <div>
                        <div class="w3-group">
                            <label>New user!</label>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="">Registration</asp:HyperLink>
                        </div>
                    </div>
                </div>
                <div class="w3-quarter">
                    <p></p>
                </div>
            </div>
            <footer class ="w3-container w3-light-grey">
                <p>
                    @2020
                </p>
            </footer>
        </div>
    </form>
</body>
</html>
