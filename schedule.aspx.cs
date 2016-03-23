using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
        int index = GridView1.SelectedIndex;
        Session["team"] = 0;
        Session["ename"] = GridView1.SelectedValue;
        Response.Redirect("Details.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView2.SelectedIndex;
        Session["team"] = 1;
        Session["ename"] = GridView2.SelectedValue;
        Response.Redirect("Details.aspx");
        

    }
}