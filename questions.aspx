<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="questions.aspx.cs" Inherits="questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="General"></asp:Label>
    <br />
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ForumID" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView6_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" Text='<%# Bind("question") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField HeaderText="DELETE">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:ImageButton ID="ImageButton2" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Questions Posted..."></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [AForum] WHERE [ForumID] = @ForumID" SelectCommand="SELECT * FROM [AForum] ORDER BY [dati] DESC" UpdateCommand="UPDATE [AForum] SET [valid] = @valid WHERE [ForumID] = @ForumID">
        <DeleteParameters>
            <asp:Parameter Name="ForumID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" />
            <asp:Parameter Name="ForumID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Code Freaks"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ForumID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" Text='<%# Bind("question") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField HeaderText="DELETE">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Questions Posted..."></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [BForum] WHERE [ForumID] = @ForumID" SelectCommand="SELECT * FROM [BForum] ORDER BY [dati] DESC" UpdateCommand="UPDATE [BForum] SET [valid] = @valid WHERE [ForumID] = @ForumID">
        <DeleteParameters>
            <asp:Parameter Name="ForumID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" />
            <asp:Parameter Name="ForumID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Circuited"></asp:Label>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ForumID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" Text='<%# Bind("question") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField HeaderText="DELETE">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Questions Posted..."></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [CForum] WHERE [ForumID] = @ForumID" SelectCommand="SELECT * FROM [CForum] ORDER BY [dati] DESC" UpdateCommand="UPDATE [CForum] SET [valid] = @valid WHERE [ForumID] = @ForumID">
        <DeleteParameters>
            <asp:Parameter Name="ForumID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" />
            <asp:Parameter Name="ForumID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Clubs"></asp:Label>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ForumID" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView4_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" Text='<%# Bind("question") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField HeaderText="DELETE">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Questions Posted..."></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [DForum] WHERE [ForumID] = @ForumID" SelectCommand="select * from DForum ORDER BY [dati] DESC" UpdateCommand="UPDATE [DForum] SET [valid] = @valid WHERE [ForumID] = @ForumID">
        <DeleteParameters>
            <asp:Parameter Name="ForumID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" />
            <asp:Parameter Name="ForumID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="After4"></asp:Label>
    <br />
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ForumID" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" Text='<%# Bind("question") %>' Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="postername" SortExpression="postername" />
            <asp:BoundField DataField="dati" HeaderText="dati" SortExpression="dati" />
            <asp:CheckBoxField DataField="valid" HeaderText="valid" SortExpression="valid" />
            <asp:TemplateField HeaderText="DELETE">
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:ImageButton ID="ImageButton1" runat="server" CommandName="select" Height="40px" ImageAlign="Middle" ImageUrl="~/images/delete.png" Width="100px" />                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Questions Posted..."></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [EForum] WHERE [ForumID] = @ForumID" SelectCommand="select * from EForum ORDER BY [dati] DESC" UpdateCommand="UPDATE [EForum] SET [valid] = @valid WHERE [ForumID] = @ForumID">
        <DeleteParameters>
            <asp:Parameter Name="ForumID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="valid" />
            <asp:Parameter Name="ForumID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

