<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registion.aspx.cs" Inherits="JobProject.Recruiter_register" %>

<%@ Register Src="~/Company.ascx" TagPrefix="uc1" TagName="Company" %>
<%@ Register Src="~/Profile.ascx" TagPrefix="uc1" TagName="Profile1" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class ="w3-content" style ="max-width:600px">
        <div class ="w3-container w3-card-2 w3-indigo">
            <h1>Registration</h1>
        </div>
        <br />
            <table class="w3-table">
            <tr>
                <td>Username</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                   <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter correct name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td class="auto-style1"><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ErrorMessage="Password not match" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <!--<br />
        <p style="text-align:center"><asp:Label ID="Label2" runat="server" Font-Bold ="true" Font-Size="Large" ForeColor="#E46115" Text="Company Detail" Font-Underline="true"></asp:Label></p>
        <table style="text-align:center">
            <tr>
                <td>Company Name</td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Contact Person</td>
                <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Company Information</td>
                <td><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Contact No.</td>
                <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Emaill</td>
                <td><asp:TextBox ID="TextBox10" runat="server" TextMode="Email"></asp:TextBox></td>
            </tr>
        </table>-->
        
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Are you Recruiter?" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
        <uc1:Company runat="server" id="Company" />
        <uc1:Profile1 runat="server" ID="Profile1" />
        <br />
        <div align="center"><asp:Button ID="Button1" runat="server" Text="Create Profile" Font-Bold="True" OnClick="Button1_Click" class ="w3-btn w3-teal"/></div>
        </div>
    

</asp:Content>
