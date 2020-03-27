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
                <asp:Button ID="Button1" runat="server" Text="Log out" />
            </td>
        </tr>
    </table>
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    </div>
</asp:Content>
