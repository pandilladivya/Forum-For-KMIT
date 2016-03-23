using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class forumgentopics1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string titleID = DropDownList1.Text;
            int ctitleID = Convert.ToInt32(titleID);
            string question = TextBox1.Text;
            DateTime dati = DateTime.Now;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO forum ([titleID],[question],[dati]) values (" + ctitleID + ",'" + question + "','" + dati + "')";
            cmd.ExecuteNonQuery();
            Response.Redirect("adminbulletin.aspx");
        }
	catch(SqlException)
        {
            Response.Redirect("404.html");
        }
	
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
	
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
	
    }
}