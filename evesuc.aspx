<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="evesuc.aspx.cs" Inherits="evesuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 4px solid #FFFFFF;
            background-color: #245269;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <asp:Label ID="Label2" runat="server" ForeColor="White" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
    &nbsp;
    <asp:Label ID="Label1" runat="server" Text=" Event Succcessfully created! " ForeColor="White" Font-Size="XX-Large" Font-Bold="true" >
    </asp:Label>
    <br />
    <table class="auto-style1" hidden="hidden">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server"  ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="See List of Events" BackColor="white" ForeColor="#003366" Font-Bold="true" Width="259px" />
    </asp:Content>

