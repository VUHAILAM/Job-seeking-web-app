<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="JobProject.Job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="w3-row-padding">
        <div class ="w3-twothird">
            <img src="Image/job.jpg" style="width:50%">
            <h3>Basic Requirements</h3>
            <asp:TextBox ID="TextBox1" runat="server" TextMode ="MultiLine" ReadOnly="True" Height="126px" Width="210px" BorderStyle="None"></asp:TextBox>
            <h3>Skills</h3>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ReadOnly="true" Height="41px" Width="209px" BorderStyle="None"></asp:TextBox>
            <h3>Salary </h3><asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" BorderStyle="None"></asp:TextBox>

        </div>
        <div class="w3-third">
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly ="true" Font-Bold="True" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly ="true" Height="376px" TextMode="MultiLine" Width="434px"></asp:TextBox>
            <br />
            <br />
            <button class="w3-btn w3-teal">Apply Now</button>
        </div>
    </div>

</asp:Content>
