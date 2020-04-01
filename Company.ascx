<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Company.ascx.cs" Inherits="JobProject.Company" %>
<link href="CSS/w3.css" rel="stylesheet" />
<br />
    <div class="w3-container w3-card-2 w3-indigo">
        <h1>Company Details </h1>
    </div>
        <table class="w3-table">
            <tr>
                <td>Security Question</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" Width="131px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Answer</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
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
                <td><asp:TextBox ID="TextBox8" runat="server" TextMode="Phone"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Emaill</td>
                <td><asp:TextBox ID="TextBox10" runat="server" TextMode="Email"></asp:TextBox></td>
            </tr>
        </table>
        <br />