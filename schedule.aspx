<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="schedule.aspx.cs" Inherits="schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT DISTINCT [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description] FROM [events] ORDER BY [regstart]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ename" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" SortExpression="eid" InsertVisible="False" Visible="False" />
            <asp:BoundField DataField="ename" HeaderText="Event Name" SortExpression="ename" />
            <asp:BoundField DataField="regstart" HeaderText="Registrations Begin" SortExpression="regstart" />
            <asp:BoundField DataField="regend" HeaderText="Registrations End" SortExpression="regend" />
            <asp:BoundField DataField="estart" HeaderText="Event Begins" SortExpression="estart" />
            <asp:BoundField DataField="eend" HeaderText="Event Ends" SortExpression="eend" />
            <asp:BoundField DataField="efrom" HeaderText="Event Starts At" SortExpression="efrom" />
            <asp:BoundField DataField="eto" HeaderText="Event Finishes At" SortExpression="eto" />
            <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
            <asp:BoundField DataField="eligibility" HeaderText="Eligibility" SortExpression="eligibility" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" DeleteCommand="DELETE FROM [events] WHERE [eid] = @eid" InsertCommand="INSERT INTO [events] ([ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description]) VALUES (@ename, @regstart, @regend, @estart, @eend, @efrom, @eto, @venue, @eligibility, @description)" SelectCommand="SELECT [eid], [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description] FROM [events]" UpdateCommand="UPDATE [events] SET [ename] = @ename, [regstart] = @regstart, [regend] = @regend, [estart] = @estart, [eend] = @eend, [efrom] = @efrom, [eto] = @eto, [venue] = @venue, [eligibility] = @eligibility, [description] = @description WHERE [eid] = @eid">
        <DeleteParameters>
            <asp:Parameter Name="eid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="regstart" DbType="Date" />
            <asp:Parameter Name="regend" DbType="Date" />
            <asp:Parameter Name="estart" DbType="Date" />
            <asp:Parameter Name="eend" DbType="Date" />
            <asp:Parameter Name="efrom" Type="String" />
            <asp:Parameter Name="eto" Type="String" />
            <asp:Parameter Name="venue" Type="String" />
            <asp:Parameter Name="eligibility" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="regstart" DbType="Date" />
            <asp:Parameter Name="regend" DbType="Date" />
            <asp:Parameter Name="estart" DbType="Date" />
            <asp:Parameter Name="eend" DbType="Date" />
            <asp:Parameter Name="efrom" Type="String" />
            <asp:Parameter Name="eto" Type="String" />
            <asp:Parameter Name="venue" Type="String" />
            <asp:Parameter Name="eligibility" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="eid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ename" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="16px" Width="795px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="eid" HeaderText="eid" InsertVisible="False" ReadOnly="True" SortExpression="eid" Visible="False" />
        <asp:BoundField DataField="ename" HeaderText="Event Name" SortExpression="ename" />
        <asp:BoundField DataField="regstart" HeaderText="Registrations Begin" SortExpression="regstart" />
        <asp:BoundField DataField="regend" HeaderText="Registrations End" SortExpression="regend" />
        <asp:BoundField DataField="estart" HeaderText="Event Begins" SortExpression="estart" />
        <asp:BoundField DataField="eend" HeaderText="Event Ends" SortExpression="eend" />
        <asp:BoundField DataField="efrom" HeaderText="Event Starts At" SortExpression="efrom" />
        <asp:BoundField DataField="eto" HeaderText="Event Finishes At" SortExpression="eto" />
        <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
        <asp:BoundField DataField="eligibility" HeaderText="Eligibility" SortExpression="eligibility" />
        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
        <asp:BoundField DataField="tmno" HeaderText="Members Per Team" SortExpression="tmno" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" DeleteCommand="DELETE FROM [teamevents] WHERE [eid] = @eid" InsertCommand="INSERT INTO [teamevents] ([ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description], [tmno]) VALUES (@ename, @regstart, @regend, @estart, @eend, @efrom, @eto, @venue, @eligibility, @description, @tmno)" SelectCommand="SELECT * FROM [teamevents]" UpdateCommand="UPDATE [teamevents] SET [ename] = @ename, [regstart] = @regstart, [regend] = @regend, [estart] = @estart, [eend] = @eend, [efrom] = @efrom, [eto] = @eto, [venue] = @venue, [eligibility] = @eligibility, [description] = @description, [tmno] = @tmno WHERE [eid] = @eid">
    <DeleteParameters>
        <asp:Parameter Name="eid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ename" Type="String" />
        <asp:Parameter DbType="Date" Name="regstart" />
        <asp:Parameter DbType="Date" Name="regend" />
        <asp:Parameter DbType="Date" Name="estart" />
        <asp:Parameter DbType="Date" Name="eend" />
        <asp:Parameter Name="efrom" Type="String" />
        <asp:Parameter Name="eto" Type="String" />
        <asp:Parameter Name="venue" Type="String" />
        <asp:Parameter Name="eligibility" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="tmno" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ename" Type="String" />
        <asp:Parameter DbType="Date" Name="regstart" />
        <asp:Parameter DbType="Date" Name="regend" />
        <asp:Parameter DbType="Date" Name="estart" />
        <asp:Parameter DbType="Date" Name="eend" />
        <asp:Parameter Name="efrom" Type="String" />
        <asp:Parameter Name="eto" Type="String" />
        <asp:Parameter Name="venue" Type="String" />
        <asp:Parameter Name="eligibility" Type="String" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="tmno" Type="Int32" />
        <asp:Parameter Name="eid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

