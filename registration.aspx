<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label6" runat="server" Text="Your Student ID Does Not Exist In College Database" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label7" runat="server" Text="You already have an account in this forum" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Visible="False"></asp:Label>
    <br />
    <table style="width:100%; height: 215px;">
        <tr>
            <td class="auto-style1">
    <asp:Label ID="username" runat="server" Text="Username" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
          
		  </td>
            <td>
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="TextBox1" Display="Dynamic" EnableClientScript="False" runat="server" ErrorMessage="User Name must be entered" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:Label ID="Label2" runat="server" Text="Student ID" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
  </td>
            <td>
    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
			          	 <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ControlToValidate="TextBox2" Display="Dynamic" EnableClientScript="False" runat="server" ErrorMessage="Student ID must be entered" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF5050"></asp:RequiredFieldValidator>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
	<tr>
            <td class="auto-style1">
    <asp:Label ID="Label4" runat="server" Text="Re-Enter Password" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" ErrorMessage="Passwords Don't Match" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF5050"></asp:CompareValidator>
</td>
	
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
 <!--   <asp:Label ID="Label5" runat="server" Text="Profile Pic" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
  
    <asp:FileUpload id="FileUploadControl" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="31px" Width="385px" />
    <br />
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " Font-Bold="True" Font-Names="narkism" Font-Size="X-Large" ForeColor="White" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Font-Bold="True" Font-Size="X-Large" Height="39px" Width="124px" />
    <br />
    <br />
    <br />-->
   </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

