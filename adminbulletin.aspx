<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminbulletin.aspx.cs" Inherits="adminbulletin" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White" ></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Narkisim" Font-Size="XX-Large" ForeColor="White" Text="Bulletin Posts"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Header:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="50px" Width="500px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <asp:Label ID="Label3" runat="server" Text="Description:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="50px" Width="500px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
   <br />
    
&nbsp;
    <!--<asp:Label ID="Label5" runat="server" Text="Event Link:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
    
    <br />
    
<br />
    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Thread Link:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
    
    <br />
    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />-->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Height="29px" Text="Post" Width="178px" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White" Text="List Of Bulletins:"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="173px" Width="821px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="header" HeaderText="header" SortExpression="header" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" DeleteCommand="DELETE FROM [bull] WHERE [bid] = @bid" InsertCommand="INSERT INTO [bull] ([header], [description], [date], [valid]) VALUES (@header, @description, @date, @valid)" SelectCommand="SELECT * FROM [bull]" UpdateCommand="UPDATE [bull] SET [header] = @header, [description] = @description, [date] = @date, [valid] = @valid WHERE [bid] = @bid">
            <DeleteParameters>
                <asp:Parameter Name="bid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="header" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="valid" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="header" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="valid" Type="Boolean" />
                <asp:Parameter Name="bid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT [bid], [header], [description], [date], [valid] FROM [bull] ORDER BY [date] DESC" DeleteCommand="delete bull where bid=@bid" UpdateCommand="UPDATE [bull] SET [valid] = @valid,header=@header,description=@description WHERE [bid]=@bid">
            <DeleteParameters>
                <asp:Parameter Name="bid" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="valid" />
                <asp:Parameter Name="header" />
                <asp:Parameter Name="description" />
                <asp:Parameter Name="bid" />
            </UpdateParameters>
            
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
<p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

