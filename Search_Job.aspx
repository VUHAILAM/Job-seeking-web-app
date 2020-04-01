<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search_Job.aspx.cs" Inherits="JobProject.Search_Job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center">SEARCH JOB</h2>
    <div>
        <table class="w3-table">
            <tr>
                <td>Category</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Area</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td>Post</td>
                <td><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Expected Salary</td>
                <td>
                    <label>From</label><asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    <label>To</label><asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
