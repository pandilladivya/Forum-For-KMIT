using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class codefreakthreads : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=FORUM1;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string t = Session["ForumID"].ToString();
        string forum = t.ToString();
        int cforum = Convert.ToInt32(forum);
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select [question] from BForum where [ForumID]=" + cforum + "";
        conn.Open();
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read())
        {
            Label2.Text = r.GetString(0);
        }

        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            string t = Session["ForumID"].ToString();
            string forum = t.ToString();
            int cforum = Convert.ToInt32(forum);
            DateTime time = DateTime.Now;              // Use current time
            string format = "yyyy-MM-dd HH:MM:ss";

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [dbo].[BThread]([ForumID],[answer],[postername],[dati]) VALUES(" + cforum + ",'" + TextBox1.Text + "','" + Session["uname"] + "','" + time.ToString(format) + "')";
            conn.Open();
            cmd.ExecuteNonQuery();
            Label3.Visible = true;
            conn.Close();

            
        }
    }
}