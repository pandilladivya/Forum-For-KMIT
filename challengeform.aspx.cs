using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class challengeform : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text != "")
        {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [dbo].[codit] ([cname],[deadline],[difficulty],[techreqd],[setby],[description])  VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.Text + "','" + TextBox4.Text + "','" + Session["uname"].ToString() + "','" + TextBox5.Text + "')";
            conn.Open();
            cmd.ExecuteNonQuery();
            Label7.Visible = true;

        }
        else 
        {
            Label6.Visible = true;

        }
    }
}