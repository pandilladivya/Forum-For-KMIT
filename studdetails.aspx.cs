using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
public partial class Details : System.Web.UI.Page
{
    DateTime dt;
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["ename"].ToString();
        if (Convert.ToInt16(Session["team"]) == 0)
        {
            conn.Open();
            string query1 = "select regstart from events where ename='" + Label1.Text + "'";         
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                dt = Convert.ToDateTime(dr[0]);
            }
            DateTime date = (DateTime.Now);
            if (dt.Date <= date.Date)
            {
                Button1.Visible = false;
            }
            else
            {
                Button1.Visible = true;
            }
            dr.Close();
            string q = "select name from reg where hno='" + Session["uname"] + "' and en='" + Session["ename"] + "'";
            SqlCommand sc = new SqlCommand(q, conn);
            SqlDataReader sr = sc.ExecuteReader();

            if (sr.HasRows)
            {
                Button1.Visible = false;
            }
            sr.Close();
            conn.Close();
        }
        else
        {
            conn.Open();
            string query1 = "select regstart from teamevents where ename='" + Label1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                dt = Convert.ToDateTime(dr[0]);
            }
            DateTime date = (DateTime.Now);
            if (dt.Date <= date.Date)
            {
                Button1.Visible = false;
            }
            else
            {
                Button1.Visible = true;
            }
            dr.Close();
            string q = "select stu_name from teamreg where uname='" + Session["uname"] + "' and en='" + Session["ename"] + "'";
            SqlCommand sc = new SqlCommand(q, conn);
            SqlDataReader sr = sc.ExecuteReader();
            if (sr.HasRows)
            {
                Button1.Visible = false;
            }
            else
            {
                Button1.Visible = true;
            }
            sr.Close();
            conn.Close();
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["team"]) == 1)
        {
            conn.Open();
            string query1 = "select tmno from teamevents where ename='" + Session["ename"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                Session["tno"] = Convert.ToInt16(dr.GetValue(0)) - 2;
            }

            Response.Redirect("sturegform.aspx?Event=" + Session["ename"]);
            conn.Close();
        }
        else
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from setting where rno='" + Session["uname"] + "'";
            
            SqlDataReader dr = cmd.ExecuteReader();
            string a = "", b = "", c = "", d = "", ef = "";

            while (dr.Read())
            {
                a = dr.GetValue(1).ToString();
                b = dr.GetValue(0).ToString();
                c = dr.GetValue(9).ToString();
                d = dr.GetValue(3).ToString();
                ef = dr.GetValue(8).ToString();
            } dr.Close();
            string q1 = "insert into reg values('" + Session["ename"] + "','" + a + "','" + b + "','" + c + "','" + d + "','" + ef + "')";
            SqlCommand cmd1 = new SqlCommand(q1, conn);         
            cmd1.ExecuteNonQuery();
           
            conn.Close();
            Response.Redirect("regsuc.aspx");
            //cmd.ExecuteNonQuery();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("stupartlist.aspx?Event=" + Session["ename"]);
    }
}