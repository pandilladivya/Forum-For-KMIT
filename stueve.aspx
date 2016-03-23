<%@ Page Title="" Language="C#" MasterPageFile="forum.master" AutoEventWireup="true" CodeFile="stueve.aspx.cs" Inherits="stueve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <br />

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT * FROM [events]"></asp:SqlDataSource>

                <br />
                <asp:Label ID="Label2" runat="server" Text="Individual Events" Font-Bold="True" ForeColor="White"></asp:Label>

                <br />

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ename" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="35px" Width="500px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                       
                        <asp:BoundField DataField="ename" HeaderText="Event Name" SortExpression="ename" />
                        <asp:BoundField DataField="regstart" HeaderText="Registrations Start" SortExpression="regstart" />
                        <asp:BoundField DataField="regend" HeaderText="Registrations End" SortExpression="regend" />
                        <asp:BoundField DataField="estart" HeaderText="Event Begins" SortExpression="estart" />
                        <asp:BoundField DataField="eend" HeaderText="Event Ends" SortExpression="eend" />
                        <asp:BoundField DataField="efrom" HeaderText="Starts" SortExpression="efrom" />
                        <asp:BoundField DataField="eto" HeaderText="Finishes" SortExpression="eto" />
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
                <asp:Label ID="Label3" runat="server" Text="Team Events" Font-Bold="True" ForeColor="White"></asp:Label>

                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ename" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="613px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ename" HeaderText="Event Name" SortExpression="ename" />
                        <asp:BoundField DataField="regstart" HeaderText="Registration Start" SortExpression="regstart" />
                        <asp:BoundField DataField="regend" HeaderText="Registration End" SortExpression="regend" />
                        <asp:BoundField DataField="estart" HeaderText="Event Begins" SortExpression="estart" />
                        <asp:BoundField DataField="eend" HeaderText="Event Ends" SortExpression="eend" />
                        <asp:BoundField DataField="efrom" HeaderText="Starts" SortExpression="efrom" />
                        <asp:BoundField DataField="eto" HeaderText="Finishes" SortExpression="eto" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT * FROM [teamevents]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT * FROM [teamevents]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
</asp:Content>

