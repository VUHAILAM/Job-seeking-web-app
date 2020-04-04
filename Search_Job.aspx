<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search_Job.aspx.cs" Inherits="JobProject.Search_Job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h2 style="text-align:center">SEARCH JOB</h2>
    <div>
        <table class="w3-table">
            <tr>
                <td>Title</td>
                <td><asp:TextBox ID="TextBox3" runat="server" Width="196px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Company Name</td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox></td>
            </tr>
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
                <td>Expected Salary</td>
                <td>
                    <label>From</label><asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    <label>To</label><asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox> $
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Search" class="w3-btn w3-teal" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="jobpost_id" />
                <asp:BoundField DataField="job_title" HeaderText="Title" />
                <asp:BoundField DataField="company_name" HeaderText="Company" />
                <asp:BoundField DataField="username" HeaderText="Poster" />
                <asp:ButtonField ButtonType="Button" Text="View" CommandName="view">
                <ControlStyle CssClass="w3-btn w3-teal" />
                </asp:ButtonField>
            </Columns>
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
    </div></center>
</asp:Content>
