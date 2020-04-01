<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="JobProject.SignOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Sign Out Successfull</h2>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Click here to continue</asp:HyperLink>
</asp:Content>
