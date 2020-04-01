<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Candidate.aspx.cs" Inherits="JobProject.Candidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <h2>Welcome to Candidate Page
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True"></asp:Label></h2>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignOut.aspx">Log out</asp:LinkButton>
            </td>
        </tr> 
    </table>
    <div class ="w3-container">
        <center>
        <asp:Label ID="Label2" runat="server" Text="Basic Detail" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#0066FF"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="41px" Width="463px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="candidate_id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="first_name" HeaderText="Full name" SortExpression="first_name" />
                <asp:BoundField DataField="candidate_addrs" HeaderText="Address" SortExpression="candidate_addrs" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="BirthDay" SortExpression="dob" />
                <asp:BoundField DataField="contact_no" HeaderText="Phone" SortExpression="contact_no" />
                <asp:BoundField DataField="email_id" HeaderText="Email" SortExpression="email_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" Visible="False" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT DISTINCT [first_name], [candidate_addrs], [gender], [dob], [contact_no], [email_id], [candidate_id] FROM [candidate] WHERE ([candidate_id] = @candidate_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </center>
    </div>
</asp:Content>
