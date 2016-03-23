<%@ Page Title="" Language="C#" MasterPageFile="~/forum.master" AutoEventWireup="true" CodeFile="challenge.aspx.cs" Inherits="challenge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 251px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 269px;
        }
        .auto-style4 {
            height: 26px;
            width: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Challenge Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Set By"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Difficulty"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Skills Required"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Deadline"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Description"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="62px" ImageUrl="~/images/acceptchallenge.png" OnClick="ImageButton1_Click" Width="251px" />
&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="62px" ImageUrl="~/images/completechallenge.png" OnClick="ImageButton2_Click" Width="300px" />
        &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="62px" ImageUrl="~/images/weaccept.png" OnClick="ImageButton3_Click" Width="269px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="label" Visible="False"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

