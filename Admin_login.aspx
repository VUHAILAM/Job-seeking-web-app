<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="JobProject.Admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><strong>Login</strong></p>
    <div class="w3-form w3-card-4">
        <h2>Sign In</h2>
        <div class="w3-group">
            <label>Admin name</label>
            <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>
        </div>

        <div class="w3-group">
            <label>Password</label>
            <asp:TextBox ID="TextBox2" class="w3-input" runat="server" TextMode="Password"></asp:TextBox>
        </div>

        <asp:Label ID="Label1" runat="server" Text="123"></asp:Label>
        <br />
        <asp:Button ID="Button1" class="w3-btn w3-teal" runat="server" Text="Login" OnClick="Button1_Click" />
        &nbsp
                        <asp:HyperLink ID="HyperLink1" runat="server">Forget password??</asp:HyperLink>
    </div>
</asp:Content>
