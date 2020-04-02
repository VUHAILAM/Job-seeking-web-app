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
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Area</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td>Post</td>
                <td><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Expected Salary</td>
                <td>
                    <label>From</label><asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    <label>To</label><asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" class="w3-btn w3-teal"/>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
