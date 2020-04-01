<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Profile.ascx.cs" Inherits="JobProject.Profile" %>
<link href="CSS/w3.css" rel="stylesheet" />
<br />
    <div class="w3-container w3-card-2 w3-indigo">
        <h1>Candidate Details </h1>
    </div>
        <table class="w3-table">
            <tr>
                <td>Security Question</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" Width="131px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Answer</td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" /><asp:RadioButton ID="RadioButton2" runat="server" Text="Female" /><asp:RadioButton ID="RadioButton3" runat="server" Text="Other" />
                </td>
            </tr>
            <tr>
                <td>D.O.B</td>
                <td> <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Phone"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox></td>
            </tr>
        </table>
        <br />
