using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class after4 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=FORUM1;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            DateTime time = DateTime.Now;              // Use current time
            string format = "yyyy-MM-dd HH:MM:ss";

            cmd.CommandText = "INSERT INTO [dbo].[EForum]([titleID],[question],[postername],[dati]) VALUES(" + Convert.ToInt32(DropDownList1.Text) + ",'" + TextBox1.Text + "','" + Session["uname"].ToString() + "','" + time.ToString(format) + "')";
            conn.Open();
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
        
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedValue.ToString();
        //Int64 ForumID = (Int64)GridView1.SelectedValue;
        Session["ForumID"] = GridView1.SelectedValue.ToString();

        Response.Redirect("after4threads.aspx");

    }
}