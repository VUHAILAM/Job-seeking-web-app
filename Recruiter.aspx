<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Recruiter.aspx.cs" Inherits="JobProject.Recruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <h2>Welcome to Recruiter Page
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label></h2>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignOut.aspx">Log out</asp:LinkButton>
            </td>
        </tr>
    </table>
    <center><div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="225px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="company_id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="company_id" HeaderText ="company_id" InsertVisible="False" ReadOnly="True" SortExpression="company_id" Visible="False"/>
                <asp:BoundField DataField="company_name" HeaderText ="Company Name" SortExpression="company_name"/>
                <asp:BoundField DataField="contact_person" HeaderText ="Contact Person" SortExpression="contact_person"/>
                <asp:BoundField DataField="company_contact" HeaderText ="Company Contact" SortExpression="company_contact"/>
                <asp:BoundField DataField="company_addrs" HeaderText ="Address" SortExpression="company_addrs"/>
                <asp:BoundField DataField="company_email" HeaderText ="Email" SortExpression="company_email"/>
                <asp:BoundField DataField="company_details" HeaderText="Details" SortExpression="company_details" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT [company_id], [company_name], [contact_person], [company_contact], [company_addrs], [company_email], [company_details] FROM [company] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="User" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div></center>
</asp:Content>
