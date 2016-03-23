<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="forumctrl.aspx.cs" Inherits="forumctrl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="General"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="titleID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="titleID" HeaderText="titleID" InsertVisible="False" ReadOnly="True" SortExpression="titleID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button14" runat="server" CommandName="select" Font-Bold="True" Font-Size="Medium" Height="39px" Text="DELETE" Width="105px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [ATitle] WHERE [titleID] = @original_titleID" InsertCommand="INSERT INTO [ATitle] ([title]) VALUES (@title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [titleID], [title] FROM [ATitle]" UpdateCommand="UPDATE [ATitle] SET [title] = @title WHERE [titleID] = @original_titleID">
        <DeleteParameters>
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" />
    <br />
<br />
<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Code Freaks"></asp:Label>
<br />
  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="titleID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="titleID" HeaderText="titleID" InsertVisible="False" ReadOnly="True" SortExpression="titleID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button14" runat="server" CommandName="select" Font-Bold="True" Font-Size="Medium" Height="39px" Text="DELETE" Width="105px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [BTitle] WHERE [titleID] = @original_titleID" InsertCommand="INSERT INTO [BTitle] ([title]) VALUES (@title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [titleID], [title] FROM [BTitle]" UpdateCommand="UPDATE [BTitle] SET [title] = @title WHERE [titleID] = @original_titleID">
        <DeleteParameters>
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="ADD" />
    <br />
    <br />
<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Circuited"></asp:Label>
<br />  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="titleID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="titleID" HeaderText="titleID" InsertVisible="False" ReadOnly="True" SortExpression="titleID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button14" runat="server" CommandName="select" Font-Bold="True" Font-Size="Medium" Height="39px" Text="DELETE" Width="105px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [titleID], [title] FROM [CTitle]">
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="ADD" />
<br />
    <br />
<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Clubs"></asp:Label>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="titleID" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="titleID" HeaderText="titleID" InsertVisible="False" ReadOnly="True" SortExpression="titleID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button14" runat="server" CommandName="select" Font-Bold="True" Font-Size="Medium" Height="39px" Text="DELETE" Width="105px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [DTitle] WHERE [titleID] = @original_titleID" InsertCommand="INSERT INTO [DTitle] ([title]) VALUES (@title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [titleID], [title] FROM [DTitle]" UpdateCommand="UPDATE [DTitle] SET [title] = @title WHERE [titleID] = @original_titleID">
        <DeleteParameters>
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="ADD" />
    <br />
<br />
<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="After4"></asp:Label>
<br />  <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="titleID" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="titleID" HeaderText="titleID" InsertVisible="False" ReadOnly="True" SortExpression="titleID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button14" runat="server" CommandName="select" Font-Bold="True" Font-Size="Medium" Height="39px" Text="DELETE" Width="105px" />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [ETitle] WHERE [titleID] = @original_titleID" InsertCommand="INSERT INTO [ETitle] ([title]) VALUES (@title)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [titleID], [title] FROM [ETitle]" UpdateCommand="UPDATE [ETitle] SET [title] = @title WHERE [titleID] = @original_titleID">
        <DeleteParameters>
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="original_titleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="ADD" />
<br />
    <br />
    <br />
    <br />
    <br />
<br />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

