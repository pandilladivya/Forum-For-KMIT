using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forummaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("home.aspx");

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}
