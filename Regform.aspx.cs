using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Regform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // this.Label10.Text = Request.QueryString["Event"];
        Label10.Text = Request.QueryString["Event"];

    }
     protected void Button1_Click(object sender, EventArgs e)
    {
         if (TextBox1.Text==null)
         {
             Label6.Text = "Name can't be NULL";
             Label6.Visible = true;
         }
         if (TextBox2.Text == null)
         {
             Label6.Text = "Hall ticket number can't be NULL";
             Label6.Visible = true;
         }
         if (TextBox4.Text == null)
         {
             Label6.Text = "Email can't be NULL";
             Label6.Visible = true;
         }
         if (TextBox5.Text == null)
         {
             Label6.Text = "Mobile Number can't be NULL";
             Label6.Visible = true;
         }
        try
        {
            SqlConnection con = new SqlConnection("Data Source=NEPTUNE\\SQL;Initial Catalog=forum;Integrated Security=True");
            con.Open();
            string query1 = "select * from reg where en='"+Label10.Text+"'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.ExecuteNonQuery();
            string query = "insert into reg values('"+Label10.Text+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["sname"] = TextBox1.Text;
            Response.Redirect("Regsuc.aspx");
        }
        catch (Exception )
        {
          
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        //refreshing/reloading page to clear all the controls
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
}
