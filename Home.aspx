<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JobProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="w3-row-padding">
    <div class ="w3-quarter">
        <p></p>
        <asp:Image ID="Image1" runat="server" Image=""/>
    </div>
    <div class ="w3-half">
        <p></p>
        <asp:Image ID="Image2" runat="server" Image=""/>
    </div>
    <div class ="w3-quarter">
        <p></p>
        <asp:Image ID="Image3" runat="server" Image=""/>
    </div>
</div>
</asp:Content>
