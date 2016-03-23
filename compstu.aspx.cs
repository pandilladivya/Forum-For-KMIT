using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.IO;
public partial class compstu : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd4 = conn.CreateCommand();
        cmd4.CommandType = System.Data.CommandType.Text;
        cmd4.CommandText = "select [uname],[link] from [chalcom] where [cid]="+Convert.ToInt16(Session["cid"])+"and [ccid]="+Convert.ToInt16(Session["ccid"]);
        SqlDataReader r=cmd4.ExecuteReader();
        while(r.Read())
        {
            txtUrl.Text = r.GetString(1);
        }

    }
    protected void Download(object sender, EventArgs e)
{
    Response.ContentType = "application/zip";
    Response.AppendHeader("Content-Disposition", "attachment; filename=Docs.zip");
    Response.TransmitFile(Server.MapPath("~/files/Docs.zip"));
    Response.End();
}
}