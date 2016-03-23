using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class forumctrl : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=FORUM1;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
	
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO [dbo].[ATitle]([title]) VALUES('"+ TextBox1.Text + "')";
        conn.Open();
        cmd.ExecuteNonQuery();
        GridView1.DataBind();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO [dbo].[BTitle] ([title]) VALUES ('" + TextBox2.Text + "')";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView2.DataBind();
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO [dbo].[CTitle] ([title]) VALUES ('" + TextBox3.Text + "')";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView3.DataBind();
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO [dbo].[DTitle] ([title]) VALUES ('" + TextBox4.Text + "')";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView4.DataBind();
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO [dbo].[ETitle] ([title]) VALUES ('" + TextBox5.Text + "')";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        GridView5.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "DELETE FROM AThread where ForumID=(Select [ForumID] from AForum where [titleID]="+GridView1.SelectedValue+")" ;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM AForum where [titleID]=" + GridView1.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM ATitle where [titleID]=" + GridView1.SelectedValue ;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView1.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "DELETE FROM BThread where ForumID=(Select [ForumID] from BForum where [titleID]=" + GridView2.SelectedValue + ")";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM BForum where [titleID]=" + GridView2.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM BTitle where [titleID]=" + GridView2.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView2.DataBind();
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "DELETE FROM CThread where ForumID=(Select [ForumID] from CForum where [titleID]=" + GridView3.SelectedValue + ")";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM CForum where [titleID]=" + GridView3.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM CTitle where [titleID]=" + GridView3.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView3.DataBind();
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "DELETE FROM DThread where ForumID=(Select [ForumID] from DForum where [titleID]=" + GridView4.SelectedValue + ")";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM DForum where [titleID]=" + GridView4.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM DTitle where [titleID]=" + GridView4.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView4.DataBind();
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "DELETE FROM EThread where ForumID=(Select [ForumID] from EForum where [titleID]=" + GridView5.SelectedValue + ")";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM EForum where [titleID]=" + GridView5.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM ETitle where [titleID]=" + GridView5.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView5.DataBind();
    }
}