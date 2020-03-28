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
                <asp:LinkButton ID="LinkButton1" runat="server">Log out</asp:LinkButton>
            </td>
        </tr>
    </table>
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="225px" AutoGenerateRows="false">
            <Fields>
                <asp:BoundField DataField="company_name" HeaderText ="Company name"/>
                <asp:BoundField DataField="contact_person" HeaderText ="Contact person"/>
                <asp:BoundField DataField="company_contact" HeaderText ="Company contact"/>
                <asp:BoundField DataField="company_addrs" HeaderText ="Company address"/>
                <asp:BoundField DataField="company_email" HeaderText ="Company email"/>
                <asp:BoundField DataField="company_details" HeaderText ="Company Details"/>
            </Fields>
        </asp:DetailsView>
    </div>
</asp:Content>
