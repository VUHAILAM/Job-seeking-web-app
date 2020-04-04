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
        <asp:DetailsView ID="DetailsView1" runat="server" Height="57px" Width="393px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="company_id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="company_id" HeaderText ="company_id" InsertVisible="False" ReadOnly="True" SortExpression="company_id" Visible="False"/>
                <asp:BoundField DataField="company_name" HeaderText ="Company Name" SortExpression="company_name" ReadOnly="True"/>
                <asp:BoundField DataField="contact_person" HeaderText ="Contact Person" SortExpression="contact_person"/>
                <asp:BoundField DataField="company_contact" HeaderText ="Company Contact" SortExpression="company_contact"/>
                <asp:BoundField DataField="company_addrs" HeaderText ="Address" SortExpression="company_addrs"/>
                <asp:BoundField DataField="company_email" HeaderText ="Email" SortExpression="company_email"/>
                <asp:BoundField DataField="company_details" HeaderText="Details" SortExpression="company_details" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle CssClass="w3-btn w3-teal" />
                </asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT [company_id], [company_name], [contact_person], [company_contact], [company_addrs], [company_email], [company_details] FROM [company] WHERE ([username] = @username)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [company] WHERE [company_id] = @original_company_id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([contact_person] = @original_contact_person) OR ([contact_person] IS NULL AND @original_contact_person IS NULL)) AND (([company_contact] = @original_company_contact) OR ([company_contact] IS NULL AND @original_company_contact IS NULL)) AND (([company_addrs] = @original_company_addrs) OR ([company_addrs] IS NULL AND @original_company_addrs IS NULL)) AND (([company_email] = @original_company_email) OR ([company_email] IS NULL AND @original_company_email IS NULL)) AND (([company_details] = @original_company_details) OR ([company_details] IS NULL AND @original_company_details IS NULL))" InsertCommand="INSERT INTO [company] ([company_name], [contact_person], [company_contact], [company_addrs], [company_email], [company_details]) VALUES (@company_name, @contact_person, @company_contact, @company_addrs, @company_email, @company_details)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [company] SET [company_name] = @company_name, [contact_person] = @contact_person, [company_contact] = @company_contact, [company_addrs] = @company_addrs, [company_email] = @company_email, [company_details] = @company_details WHERE [company_id] = @original_company_id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([contact_person] = @original_contact_person) OR ([contact_person] IS NULL AND @original_contact_person IS NULL)) AND (([company_contact] = @original_company_contact) OR ([company_contact] IS NULL AND @original_company_contact IS NULL)) AND (([company_addrs] = @original_company_addrs) OR ([company_addrs] IS NULL AND @original_company_addrs IS NULL)) AND (([company_email] = @original_company_email) OR ([company_email] IS NULL AND @original_company_email IS NULL)) AND (([company_details] = @original_company_details) OR ([company_details] IS NULL AND @original_company_details IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_company_id" Type="Int32" />
                <asp:Parameter Name="original_company_name" Type="String" />
                <asp:Parameter Name="original_contact_person" Type="String" />
                <asp:Parameter Name="original_company_contact" Type="Decimal" />
                <asp:Parameter Name="original_company_addrs" Type="String" />
                <asp:Parameter Name="original_company_email" Type="String" />
                <asp:Parameter Name="original_company_details" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="User" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="company_name" Type="String" />
                <asp:Parameter Name="contact_person" Type="String" />
                <asp:Parameter Name="company_contact" Type="Decimal" />
                <asp:Parameter Name="company_addrs" Type="String" />
                <asp:Parameter Name="company_email" Type="String" />
                <asp:Parameter Name="company_details" Type="String" />
                <asp:Parameter Name="original_company_id" Type="Int32" />
                <asp:Parameter Name="original_company_name" Type="String" />
                <asp:Parameter Name="original_contact_person" Type="String" />
                <asp:Parameter Name="original_company_contact" Type="Decimal" />
                <asp:Parameter Name="original_company_addrs" Type="String" />
                <asp:Parameter Name="original_company_email" Type="String" />
                <asp:Parameter Name="original_company_details" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div></center>
</asp:Content>
