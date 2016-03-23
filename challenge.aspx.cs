using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class challenge : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        cid = Convert.ToInt32(Session["cid"]);
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT [cname] ,[setby] ,[difficulty] ,[techreqd],[deadline],[description] from codit where [cid]="+Convert.ToInt32(Session["cid"]);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            Label7.Text = dr.GetValue(0).ToString();
            Label7.Visible = true;
            Label8.Text = dr.GetValue(1).ToString();
            Label8.Visible = true;
            Label9.Text = dr.GetValue(2).ToString();
            Label9.Visible = true;
            Label10.Text = dr.GetValue(3).ToString();
            Label10.Visible = true;
            Label11.Text = dr.GetValue(4).ToString();
            Label11.Visible = true;
            Label12.Text = dr.GetValue(5).ToString();
            Label12.Visible = true;
        }
        dr.Close();
    }
    int cid;
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Convert.ToInt32(Session["faculty"]) != 1)
        {
            SqlCommand cmd2 = conn.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "SELECT * from chalacc where cid=" + Convert.ToInt32(Session["cid"]) + " and uname='" + Session["uname"].ToString() + "'";
            SqlDataReader dr1 = cmd2.ExecuteReader();
            int c = 0;
            while (dr1.Read())
            {
                c++;
            } dr1.Close();
            if (c > 0)
            {
                Label13.Text = "You have already accepted the challenge!";
                Label13.Visible = true;
            }
            else
            { 
                SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
                
            cmd1.CommandText = "insert into chalacc values ("+Convert.ToInt32(Session["cid"])+",'"+Session["uname"].ToString()+"')";
            cmd1.ExecuteNonQuery();
            }
        }
        else
        {
            Label13.Text = "Sorry,you cannot register for this challenge.";
            Label13.Visible = true;
        }
   
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["cid"] = cid;
        Response.Redirect("Completed.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Accepted.aspx");
    }
}