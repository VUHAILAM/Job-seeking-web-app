<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JobProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
        <Columns>
            <asp:BoundField DataField="jobpost_id" Visible="False" />
            <asp:BoundField DataField="job_title" HeaderText="Title" />
            <asp:BoundField DataField="company_name" HeaderText="Company" />
            <asp:BoundField DataField="post" HeaderText="Post" />
            <asp:BoundField DataField="skillis_req" HeaderText="Skills" />
            <asp:BoundField DataField="edu_req" HeaderText="Education" />
            <asp:BoundField DataField="basic_req" HeaderText="Basic Requirements" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</div>
</asp:Content>
