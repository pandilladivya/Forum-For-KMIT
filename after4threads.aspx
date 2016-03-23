<%@ Page Title="" Language="C#" MasterPageFile="~/forum.master" AutoEventWireup="true" CodeFile="after4threads.aspx.cs" Inherits="after4threads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Question:"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ThreadID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" Text='<%# Bind("answer") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="postername" HeaderText="Posted By" SortExpression="postername" />
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
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="150px" TextMode="MultiLine" Width="750px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Narkisim" Font-Size="XX-Large" ForeColor="White" Text="Your comment has been posted for validation." Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Height="30px" OnClick="Button1_Click" Text="Post Comment" Width="150px" />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FORUM1ConnectionString %>" SelectCommand="SELECT * FROM [EThread] where [ForumID]=@cforum and valid=1 ORDER BY [dati] DESC ">
        <SelectParameters>
            <asp:SessionParameter Name="cforum" SessionField="ForumID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

