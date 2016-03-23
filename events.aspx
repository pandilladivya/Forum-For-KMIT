<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="events.aspx.cs" Inherits="events" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 344px;
        }
        .auto-style11 {
            height: 60px;
        }
        .auto-style13 {
            height: 60px;
        }
        .auto-style17 {
            height: 60px;
        }
        .auto-style21 {
            height: 60px;
        }
        .auto-style23 {
            height: 60px;
        }
        .auto-style25 {
            height: 60px;
        }
        .auto-style26 {
            width: 344px;
            height: 69px;
        }
        .auto-style27 {
            height: 69px;
        }
        .auto-style30 {
            width: 221px;
        }
    .auto-style31 {
        height: 60px;
        width: 306px;
    }
    .auto-style32 {
        height: 60px;
        width: 221px;
    }
        .auto-style33 {
            height: 69px;
            width: 221px;
        }
        .auto-style34 {
            width: 384px;
            height: 60px;
        }
        .auto-style35 {
            width: 344px;
            height: 60px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <br />
    <asp:Label ID="Label7" runat="server" Text="Event Submission : " Font-Bold="True" Font-Names="Narkisim" Font-Size="XX-Large" ForeColor="White"></asp:Label>
    <table style="padding: 10px; margin: 10px; width:100%;">
        <tr>
            <td class="auto-style35">
                <asp:Label ID="Label1" runat="server" Text="Event Name:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Event Name Required" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="Event Registration" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
                :</td>
            <td class="auto-style30">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label3" runat="server" Text="Start Date:" Font-Bold="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style33">
			
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                <cc1:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" TargetControlID="TextBox4">
                </cc1:CalendarExtender>

            </td>
            <td class="auto-style27">
                &nbsp;</td>
        </tr>
    </table>
    <table style="padding: 10px; margin: 5px; width:100%;" border="0">
        <tr>
            <td class="auto-style34">
                <asp:Label ID="Label4" runat="server" Text="End Date:" Font-Bold="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
               
                <cc1:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" BehaviorID="TextBox5_CalendarExtender" TargetControlID="TextBox5">
                </cc1:CalendarExtender>
               
            </td>
            <td class="auto-style23">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="End date after start date" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Font-Bold="True" Font-Size="Medium" ForeColor="White" Operator="GreaterThanEqual"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">
                <asp:Label ID="Label5" runat="server" Text="Event:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style34">
                <asp:Label ID="Label6" runat="server" Text="Start Date:" Font-Bold="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              
                <cc1:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" BehaviorID="TextBox6_CalendarExtender" TargetControlID="TextBox6">
                </cc1:CalendarExtender>
              
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Event Start Date Required" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
        </tr>
	
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label9" runat="server" Text="End Date:" Font-Bold="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
              
                <cc1:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" BehaviorID="TextBox7_CalendarExtender" TargetControlID="TextBox7">
                </cc1:CalendarExtender>
              
            </td>
            <td class="auto-style25">
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="End date after start date" ControlToCompare="TextBox6" ControlToValidate="TextBox7" Font-Bold="True" Font-Size="Medium" ForeColor="White" Operator="GreaterThanEqual"></asp:CompareValidator>
            </td>
        </tr>
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label10" runat="server" Text="Timings" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31"></td>
            <td class="auto-style13"></td>
        </tr>
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label11" runat="server" Text="From:" Font-Bold="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            <td class="auto-style17">
                &nbsp;</td>
        </tr>
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label12" runat="server" Text="To:" Font-Bold="True" Font-Names="Narkisim" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label13" runat="server" Text="Venue:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
                :</td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Event Name Required" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
        </tr>
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label14" runat="server" Text="Eligibilty:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style23">
                &nbsp;</td>
        </tr>
	<tr>
            <td class="auto-style34">
                <asp:Label ID="Label15" runat="server" Text="Description:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">
                <asp:Label ID="Label8" runat="server" Text="Type:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="Large" ForeColor="White" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Individual</asp:ListItem>
                    <asp:ListItem>Team</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select Event Type" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">
                <asp:Label ID="Label28" runat="server" Text="Members Per Team:" Font-Bold="True" Font-Names="Narkisim" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style21">
                &nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit Event" OnClick="Button1_Click1" />
<br />
<br />
<br />
</asp:Content>

