<%@ Page Title="" Language="C#" MasterPageFile="~/forum.master" AutoEventWireup="true" CodeFile="compstu.aspx.cs" Inherits="compstu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<asp:ScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ScriptManager>
<asp:TextBox ID="txtUrl" runat="server" Width="300" Text = "" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnShow" runat="server" Text="Play Video" OnClientClick="return ShowModalPopup()" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>

    <div class="header">
        Youtube Video
    </div>
    <div class="body">
        <iframe id = "video" width="750" height="450" frameborder="10" allowfullscreen></iframe>
        <br />
        <br />
        <asp:Button ID="btnClose" runat="server" Text="Close" />
    </div>
</asp:Panel>
    <script type="text/javascript">
        function ShowModalPopup() {
            var url = $get("<%=txtUrl.ClientID %>").value;
        url = url.split('v=')[1];
        $get("video").src = "//www.youtube.com/embed/" + url
        $find("mpe").show();
        return false;
    }
    function HideModalPopup() {
        $get("video").src = "";
        $find("mpe").hide();
        return false;
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

