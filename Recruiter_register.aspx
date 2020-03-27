<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Recruiter_register.aspx.cs" Inherits="JobProject.Recruiter_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <p style="text-align:center"><asp:Label ID="Label1" runat="server" Font-Bold ="true" Font-Size="Large" ForeColor="#E46115" Text="Login Detail" Font-Underline="true"></asp:Label></p>
        <br />
            <table style="text-align:center">
            <tr>
                <td>Username</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                   <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter correct name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ErrorMessage="Password not match" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Security Question</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" Width="131px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Answer</td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <br />
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
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Profile" Font-Bold="True" OnClick="Button1_Click" />
    </form>

</asp:Content>
