<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="threadctrl.aspx.cs" Inherits="threadctrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="General"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Height="100px" Text='<%# Bind("answer") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:BoundField DataField="dati" HeaderText="dati" SortExpression="dati" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [AThread] WHERE [ThreadID] = @ThreadID" SelectCommand="SELECT * FROM [AThread] ORDER BY [dati] DESC" UpdateCommand="UPDATE [AThread] SET [valid] = @valid WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="ThreadID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Code Freaks"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Height="100px" Text='<%# Bind("answer") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:BoundField DataField="dati" HeaderText="dati" SortExpression="dati" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [BThread] WHERE [ThreadID] = @ThreadID" SelectCommand="SELECT * FROM [BThread] ORDER BY [dati] DESC" UpdateCommand="UPDATE [BThread] SET [valid] = @valid WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="ThreadID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Circuited"></asp:Label>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Height="100px" Text='<%# Bind("answer") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:BoundField DataField="dati" HeaderText="dati" SortExpression="dati" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [CThread] WHERE [ThreadID] = @ThreadID" SelectCommand="SELECT * FROM [CThread] ORDER BY [dati] DESC" UpdateCommand="UPDATE [CThread] SET [valid] = @valid WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="ThreadID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Clubs"></asp:Label>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView4_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Height="100px" Text='<%# Bind("answer") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:BoundField DataField="dati" HeaderText="dati" SortExpression="dati" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [DThread] WHERE [ThreadID] = @ThreadID" SelectCommand="SELECT * FROM [DThread] ORDER BY [dati] DESC" UpdateCommand="UPDATE [DThread] SET [valid] = @valid WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="ThreadID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="After4"></asp:Label>
    <br />
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Height="100px" Text='<%# Bind("answer") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:BoundField DataField="dati" HeaderText="dati" SortExpression="dati" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [EThread] WHERE [ThreadID] = @ThreadID" SelectCommand="SELECT * FROM [EThread] ORDER BY [dati] DESC" UpdateCommand="UPDATE [EThread] SET [valid] = @valid WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="ThreadID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

