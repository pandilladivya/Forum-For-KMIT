using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class updatesample_ : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    SqlCommand cmd;
   //can update everything but username-work on it!!
    protected void Page_Load(object sender, EventArgs e)
    {
        
         con.Open();
      
         SqlCommand com = con.CreateCommand();
        com.CommandText= "select * from setting where rno='" + Session["uname"] + "'";
        SqlDataReader r = com.ExecuteReader();
        while (r.Read())
        { 
            TextBox2.Text=r.GetString(1);
            TextBox3.Text=r.GetString(2);
            TextBox4.Text=r.GetString(3);
            TextBox5.Text=r.GetString(4);
            TextBox6.Text = r.GetString(5);
        }
        r.Close();
        
         
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand com = con.CreateCommand();
        com.CommandText = "select * from setting where rno='" + Session["uname"] + "'";
        SqlDataReader r = com.ExecuteReader();
        while (r.Read())
        {
            TextBox2.Text = r.GetString(1);
            TextBox3.Text = r.GetString(2);
            TextBox4.Text = r.GetString(3);
            TextBox5.Text = r.GetString(4);
            TextBox6.Text = r.GetString(5);
        }
        r.Close();
       
     //   Session["Hello"] = TextBox1.Text;
        cmd = new SqlCommand("update setting set uname='"+TextBox2.Text+"' where rno='"+Session["uname"]+"'", con);
        cmd.ExecuteNonQuery();
       
       // Session["Hello"] = TextBox2.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
      //  Session["Hello"] = TextBox1.Text;
        cmd = new SqlCommand("update setting set password='" + TextBox3.Text + "' where rno='" + Session["uname"] + "'", con);
        cmd.ExecuteNonQuery();
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      //  con.Open();
      //  Session["Hello"] = TextBox1.Text;
        cmd = new SqlCommand("update setting set email='" + TextBox4.Text + "' where rno='" + Session["uname"] + "'", con);
        cmd.ExecuteNonQuery();
        //con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //con.Open();
      //  Session["Hello"] = TextBox1.Text;
        cmd = new SqlCommand("update setting set abt'" + TextBox5.Text + "' where rno='" + Session["uname"] + "'", con);
        cmd.ExecuteNonQuery();
       // con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
      //  con.Open();
      //  Session["Hello"] = TextBox1.Text;
        cmd = new SqlCommand("update setting set interest='" + TextBox6.Text + "' where rno='" + Session["uname"] + "'", con);
        cmd.ExecuteNonQuery();
      //  con.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
      //  con.Open();
      //  Session["Hello"] = TextBox1.Text;
        cmd = new SqlCommand("update setting set contact='" + TextBox7.Text + "' where rno='" + Session["uname"] + "'", con);
        cmd.ExecuteNonQuery();
       // con.Close();
    }
}