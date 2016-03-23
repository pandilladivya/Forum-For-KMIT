<%@ Page Title="" Language="C#" MasterPageFile="~/FORUM1.master" AutoEventWireup="true" CodeFile="forumhome1.aspx.cs" Inherits="forumhome1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Narkisim" Font-Size="XX-Large" ForeColor="White" ></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="General"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="general" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dati" HeaderText="Posted On" SortExpression="dati" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="general" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [AThread] WHERE [ThreadID] = @ThreadID" InsertCommand="INSERT INTO [AThread] ([ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (@ForumID, @answer, @postername, @dati, @valid, @faculty)" SelectCommand="SELECT * FROM [AThread] WHERE ([postername] = @postername) ORDER BY [dati] DESC" UpdateCommand="UPDATE [AThread] SET  [answer] = @answer, [valid] = 0 WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ForumID" Type="Int32" />
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="postername" Type="String" />
            <asp:Parameter Name="dati" Type="DateTime" />
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="faculty" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="postername" SessionField="uname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;

    <br />
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Code Freaks"></asp:Label>
    <asp:SqlDataSource ID="general0" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [BThread] WHERE [ThreadID] = @ThreadID" InsertCommand="INSERT INTO [BThread] ([ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (@ForumID, @answer, @postername, @dati, @valid, @faculty)" SelectCommand="SELECT * FROM [BThread] WHERE ([postername] = @postername) ORDER BY [dati] DESC" UpdateCommand="UPDATE [BThread] SET  [answer] = @answer, [valid] = 0 WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ForumID" Type="Int32" />
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="postername" Type="String" />
            <asp:Parameter Name="dati" Type="DateTime" />
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="faculty" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="postername" SessionField="uname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="general0" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dati" HeaderText="Posted On" SortExpression="dati" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Circuited"></asp:Label>
    <br />
    <asp:SqlDataSource ID="general1" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [CThread] WHERE [ThreadID] = @ThreadID" InsertCommand="INSERT INTO [CThread] ([ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (@ForumID, @answer, @postername, @dati, @valid, @faculty)" SelectCommand="SELECT * FROM [CThread] WHERE ([postername] = @postername) ORDER BY [dati] DESC" UpdateCommand="UPDATE [CThread] SET  [answer] = @answer, [valid] = 0 WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ForumID" Type="Int32" />
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="postername" Type="String" />
            <asp:Parameter Name="dati" Type="DateTime" />
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="faculty" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="postername" SessionField="uname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="general1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dati" HeaderText="Posted On" SortExpression="dati" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Clubs"></asp:Label>
    <br />
    <asp:SqlDataSource ID="general2" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [DThread] WHERE [ThreadID] = @ThreadID" InsertCommand="INSERT INTO [DThread] ([ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (@ForumID, @answer, @postername, @dati, @valid, @faculty)" SelectCommand="SELECT * FROM [DThread] WHERE ([postername] = @postername) ORDER BY [dati] DESC" UpdateCommand="UPDATE [DThread] SET  [answer] = @answer, [valid] = 0 WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ForumID" Type="Int32" />
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="postername" Type="String" />
            <asp:Parameter Name="dati" Type="DateTime" />
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="faculty" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="postername" SessionField="uname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="general2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dati" HeaderText="Posted On" SortExpression="dati" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="After4"></asp:Label>
    <br />
    <asp:SqlDataSource ID="general3" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" DeleteCommand="DELETE FROM [EThread] WHERE [ThreadID] = @ThreadID" InsertCommand="INSERT INTO [EThread] ([ForumID], [answer], [postername], [dati], [valid], [faculty]) VALUES (@ForumID, @answer, @postername, @dati, @valid, @faculty)" SelectCommand="SELECT * FROM [EThread] WHERE ([postername] = @postername) ORDER BY [dati] DESC" UpdateCommand="UPDATE [EThread] SET  [answer] = @answer, [valid] = 0 WHERE [ThreadID] = @ThreadID">
        <DeleteParameters>
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ForumID" Type="Int32" />
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="postername" Type="String" />
            <asp:Parameter Name="dati" Type="DateTime" />
            <asp:Parameter Name="valid" Type="Boolean" />
            <asp:Parameter Name="faculty" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="postername" SessionField="uname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="answer" Type="String" />
            <asp:Parameter Name="ThreadID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="general3" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dati" HeaderText="Posted On" SortExpression="dati" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="No Comments Posted..."></asp:Label>
        </EmptyDataTemplate>
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
    
</asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <i class="line"> </i><i class="line"> </i>
  <asp:Panel ID="Panel1" runat="server" BackColor="#000000" BorderStyle="Inset"  ForeColor="Wheat" BorderWidth="3" Width="100%" >
 <marquee direction="left"  onmouseover="this.stop()" onmouseout="this.start()"
scrolldelay="100" >
<asp:Literal ID="bulletin" runat="server"></asp:Literal></marquee>
        </asp:Panel>
     
 	
    <i class="line"> </i><i class="line"> </i>
    
  <asp:Panel ID="Panel2" runat="server" BackColor="#000000" BorderStyle="Inset"  ForeColor="Wheat" BorderWidth="3" Width="100%" >
 
      <marquee direction="left"  onmouseover="this.stop()" onmouseout="this.start()"
scrolldelay="40" >
<asp:Literal ID="lt1" runat="server"></asp:Literal></marquee>
  </asp:Panel>


		<i class="line"> 
 </i>
		
</asp:Content>


