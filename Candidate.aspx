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
                <asp:BoundField DataField="candidate_addrs" HeaderText="Addrerss" SortExpression="candidate_addrs" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="BirthDay" SortExpression="dob" />
                <asp:BoundField DataField="contact_no" HeaderText="Phone" SortExpression="contact_no" />
                <asp:BoundField DataField="email_id" HeaderText="Email" SortExpression="email_id" />
                <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle CssClass="w3-btn w3-teal" />
                </asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT [first_name], [candidate_addrs], [gender], [dob], [contact_no], [email_id], [candidate_id] FROM [candidate] WHERE ([candidate_id] = @candidate_id)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [candidate] WHERE [candidate_id] = @original_candidate_id AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([candidate_addrs] = @original_candidate_addrs) OR ([candidate_addrs] IS NULL AND @original_candidate_addrs IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([contact_no] = @original_contact_no) OR ([contact_no] IS NULL AND @original_contact_no IS NULL)) AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL))" InsertCommand="INSERT INTO [candidate] ([first_name], [candidate_addrs], [gender], [dob], [contact_no], [email_id]) VALUES (@first_name, @candidate_addrs, @gender, @dob, @contact_no, @email_id)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [candidate] SET [first_name] = @first_name, [candidate_addrs] = @candidate_addrs, [gender] = @gender, [dob] = @dob, [contact_no] = @contact_no, [email_id] = @email_id WHERE [candidate_id] = @original_candidate_id AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([candidate_addrs] = @original_candidate_addrs) OR ([candidate_addrs] IS NULL AND @original_candidate_addrs IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([contact_no] = @original_contact_no) OR ([contact_no] IS NULL AND @original_contact_no IS NULL)) AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_candidate_addrs" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_dob" Type="DateTime" />
                    <asp:Parameter Name="original_contact_no" Type="Decimal" />
                    <asp:Parameter Name="original_email_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="candidate_addrs" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="contact_no" Type="Decimal" />
                    <asp:Parameter Name="email_id" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="candidate_addrs" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="contact_no" Type="Decimal" />
                    <asp:Parameter Name="email_id" Type="String" />
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_candidate_addrs" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_dob" Type="DateTime" />
                    <asp:Parameter Name="original_contact_no" Type="Decimal" />
                    <asp:Parameter Name="original_email_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </center>
    </div>
</asp:Content>
