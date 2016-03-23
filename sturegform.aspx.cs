using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;

public partial class sturegform : System.Web.UI.Page
{  
    int c = 0,t=0;
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Text = Session["ename"].ToString();
      
       /*Request.QueryString["Event"]*/
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        try
        {
            string query = "insert into teamreg values('" + Session["ename"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();

            
            
            if (Convert.ToInt16(Session["tno"])>0)
            {
               
                Session["tno"] = Convert.ToInt16(Session["tno"]) - 1;
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }
        catch(SqlException)
        {
            Response.Redirect("404.html");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn.Open();
        string query = "insert into teamreg values('" + Session["ename"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("teamregsuc.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        conn.Open();
        string query1 = "select uname,mob_no,course,email from setting where rno='" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(query1, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox2.Text = dr[0].ToString();
            TextBox4.Text = dr[1].ToString();
            TextBox5.Text = dr[2].ToString();
            TextBox6.Text = dr[3].ToString();
        }
    }
}
