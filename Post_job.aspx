<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Post_job.aspx.cs" Inherits="JobProject.Post_job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><table class="w3-table">
        <tr>
            <td>Job Title</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Post</td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Category</td>
            <td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>Area</td>
            <td><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>Education</td>
            <td><asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Bachelor</asp:ListItem>
                <asp:ListItem>High schools</asp:ListItem>
                <asp:ListItem>Master</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>Skills</td>
            <td><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Basic Requirement</td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Post" class="w3-btn w3-teal" OnClick="Button1_Click"></asp:Button></td>
        </tr>
    </table></center>
</asp:Content>
