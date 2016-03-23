using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class questions : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=FORUM1;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM EForum where [ForumID]=" + GridView5.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM EThread where [ForumID]=" + GridView5.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView5.DataBind();
    }
    protected void GridView4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM DForum where [ForumID]=" + GridView4.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM DThread where [ForumID]=" + GridView4.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView4.DataBind();
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM CForum where [ForumID] = " + GridView3.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM CThread where [ForumID] = " + GridView3.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView3.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM BForum where [ForumID]=" + GridView2.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM BThread where [ForumID]=" + GridView2.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView2.DataBind();
    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "DELETE FROM AForum where [ForumID]=" + GridView6.SelectedValue;
        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "DELETE FROM AThread where [ForumID]=" + GridView6.SelectedValue;
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();
        GridView6.DataBind();
    }
}