using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class adminbulletin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = "Welcome," + (String)Session["uname"];
	
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        try
        {
            DateTime time = DateTime.Now;              // Use current time
            string format = "yyyy-MM-dd HH:MM:ss";
             conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO [dbo].[bull] ([header],[description],[date],[valid]) VALUES ('" + TextBox5.Text + "','" + TextBox2.Text + "','"+time.ToString(format)+"',"+1+")";
            cmd.ExecuteNonQuery();
            //MessageBox.Show(o + ":Bulletin has been posted.");

            conn.Close();
            GridView1.DataBind();
           // Response.Redirect("forumcontrols.aspx");
      }
       catch (SqlException)
       {
      Response.Redirect("404.html");
      //Label7.Visible = true;
      }
       catch (InvalidOperationException)
       {
      Response.Redirect("404.html");
     // Label7.Visible = true;
      }
	
    }
protected void TextBox1_TextChanged(object sender, EventArgs e)
{
    
}
protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
{

}
}