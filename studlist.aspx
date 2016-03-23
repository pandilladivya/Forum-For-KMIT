<%@ Page Title="" Language="C#" MasterPageFile="~/FORUM1.master" AutoEventWireup="true" CodeFile="studlist.aspx.cs" Inherits="stueve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Individual Events"></asp:Label>
                <br />

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT * FROM [events] ORDER BY [regstart]"></asp:SqlDataSource>

                &nbsp;&nbsp;

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="eid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="233px" Width="1161px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="eid" HeaderText="Event ID" InsertVisible="False" ReadOnly="True" SortExpression="eid" Visible="False" />
                       
                        <asp:BoundField DataField="ename" HeaderText="Event Name" SortExpression="ename" />
                        <asp:BoundField DataField="regstart" HeaderText="Registrations Begin" SortExpression="regstart" />
                        <asp:BoundField DataField="regend" HeaderText="Registrations End" SortExpression="regend" />
                        <asp:BoundField DataField="estart" HeaderText="Event Begins" SortExpression="estart" />
                        <asp:BoundField DataField="eend" HeaderText="Event Ends" SortExpression="eend" />
                        <asp:BoundField DataField="efrom" HeaderText="Event Starts" SortExpression="efrom" />
                        <asp:BoundField DataField="eto" HeaderText="Event Finishes" SortExpression="eto" />
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
                <br />
                <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Team Events"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
            <asp:BoundField DataField="regstart" HeaderText="regstart" SortExpression="regstart" />
            <asp:BoundField DataField="regend" HeaderText="regend" SortExpression="regend" />
            <asp:BoundField DataField="estart" HeaderText="estart" SortExpression="estart" />
            <asp:BoundField DataField="eend" HeaderText="eend" SortExpression="eend" />
            <asp:BoundField DataField="efrom" HeaderText="efrom" SortExpression="efrom" />
            <asp:BoundField DataField="eto" HeaderText="eto" SortExpression="eto" />
            <asp:BoundField DataField="venue" HeaderText="venue" SortExpression="venue" />
            <asp:BoundField DataField="eligibility" HeaderText="eligibility" SortExpression="eligibility" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="tmno" HeaderText="tmno" SortExpression="tmno" />
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT [ename], [regstart], [regend], [estart], [eend], [efrom], [eto], [venue], [eligibility], [description], [tmno] FROM [teamevents]"></asp:SqlDataSource>
                <br />
                <br />
</asp:Content>

