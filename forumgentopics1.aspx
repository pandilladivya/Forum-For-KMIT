<%@ Page Title="" Language="C#" MasterPageFile="~/threadpages.master" AutoEventWireup="true" CodeFile="forumgentopics1.aspx.cs" Inherits="forumgentopics1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="General"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="title" DataValueField="titleID" Height="30px" Width="217px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT * FROM [Title] where category='gen'"></asp:SqlDataSource>
    <asp:TextBox ID="TextBox1" runat="server" Height="241px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="858px"></asp:TextBox>
    <br />

    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click1" Text="Button" Width="181px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:forumConnectionString %>" SelectCommand="SELECT [titleID],[title] from Title where category='gen'"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    
</asp:Content>

