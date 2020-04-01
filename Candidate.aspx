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
                <asp:LinkButton ID="LinkButton1" runat="server">Log out</asp:LinkButton>
            </td>
        </tr> 
    </table>
    <div class ="w3-container">
        <center>
        <asp:Label ID="Label2" runat="server" Text="Basic Detail" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#0066FF"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="41px" Width="463px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="candidate_id">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="candidate_id" Visible="False" />
                <asp:BoundField DataField="username" Visible="False" />
                <asp:BoundField DataField="first_name" HeaderText="Full Name" />
                <asp:BoundField DataField="candidate_addrs" HeaderText="Address" />
                <asp:BoundField DataField="gender" HeaderText="Gender" />
                <asp:BoundField DataField="dob" HeaderText="Birthday" />
                <asp:BoundField DataField="contact_no" HeaderText="Phone" />
                <asp:BoundField DataField="email_id" HeaderText="Email" />
                <asp:CommandField ShowEditButton ="true" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-1P4GME6\SQLEXPRESS03;Initial Catalog=jobtop;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="select * from [candidate] where ([candidate_id] = @candidate_id)" 
            DeleteCommand="delete from [candidate] where ([candidate_id] = @candidate_id)"
            InsertCommand ="INSERT INTO [candidate] ([que_id], [ans], [first_name], [candidate_addrs], [gender], [dob], [contact_no], [email_id]) VALUES (@que_id, @ans, @first_name, @candidate_addrs, @gender, @dob, @contact_no, @email_id)"
            UpdateCommand ="UPDATE [candidate] SET [que_id] = @que_id, [ans] = @ans, [first_name] = @first_name, [candidate_addrs] = @candidate_addrs, [gender] = @gender, [dob] = @dob, [contact_no] = @contact_no, [email_id] = @email_id WHERE [candidate_id] = @candidate_id"">
            <SelectParameters>
                <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="candidate_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter DbType="Date" Name="profile_date" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="middle_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="candidate_addrs" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="contact_no" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="candidate_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="ans" Type="String" />
                <asp:Parameter DbType="Date" Name="profile_date" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="middle_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="candidate_addrs" Type="String" />
                <asp:Parameter Name="city_id" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="contact_no" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
            </center>
    </div>
</asp:Content>
