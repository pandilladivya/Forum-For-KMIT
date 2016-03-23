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
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    DateTime dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["ename"].ToString();


        // Label2.Text = Session["team"].ToString();

        //SqlConnection con = new SqlConnection("Data Source=NEPTUNE\\SQL;Initial Catalog=forum;Integrated Security=True");
        conn.Open();
       /* if (Convert.ToInt16(Session["team"]) == 0)
        {
            string query1 = "select regstart from events where ename='" + Label1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            SqlDataReader dr = cmd1.ExecuteReader();

            while (dr.Read())
            {

                dt = Convert.ToDateTime(dr[0]);
            }

            DateTime date = (DateTime.Now);
            // string da = date.ToString("M/d/yyyy");
            // DateTime  dat = Convert.ToDateTime(da);

            if (dt.Date <= date.Date)
            {
                Button1.Visible = false;
            }
            else
            {
                Button1.Visible = true;
            }
            conn.Close();
            if (Convert.ToInt16(Session["admin"]) == 1)
            {
                Button1.Visible = false;
               
            }
            else
            {
                Button4.Visible =false;
            }
        }
        // else
        // {
        /*   string query1 = "select regstart from teamevents where ename='" + Label1.Text + "'";
           SqlCommand cmd1 = new SqlCommand(query1, conn);
           SqlDataReader dr = cmd1.ExecuteReader();

           while (dr.Read())
           {

               dt = Convert.ToDateTime(dr[0]);
           }

           DateTime date = (DateTime.Now);
           // string da = date.ToString("M/d/yyyy");
           // DateTime  dat = Convert.ToDateTime(da);

           if (dt.Date <= date.Date)
           {
               Button1.Visible = false;
           }
           else
           {
               Button1.Visible = true;
           }
           conn.Close();
       }*/
    }
 /*   protected void Button1_Click(object sender, EventArgs e)
    {
        // if (Convert.ToInt16(Session["faculty"]) != 1)
        //{
        if (Convert.ToInt16(Session["team"]) == 1)
        {

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
            // Session["uname"]="13BD1A0522";
            cmd.CommandText = "select * from setting where rno='" + Session["uname"] + "'";
            /*  DataTable dt = new DataTable();
              SqlDataAdapter da = new SqlDataAdapter(cmd);
              da.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader(); string q1 = " ";
            string a = "", b = "", c = "", d = "", ef = "";

            while (dr.Read())
            {//Session["ename"]//"','" + dt.Rows[0]["uname"].ToString()
                // "','"+dt.Rows[0]["uname"]+ "','" + dt.Rows[0]["rno"].ToString() + "','" + dt.Rows[0]["course"].ToString() + "','" + dt.Rows[0]["email"].ToString() + "'," + Convert.ToInt64(dt.Rows[0]["mob_no"] )+ ")";
                a = dr.GetValue(1).ToString();
                b = dr.GetValue(0).ToString();
                c = dr.GetValue(9).ToString();
                d = dr.GetValue(3).ToString();

            }
            q1 = "insert into reg values('" + Session["ename"] + "','" + a + "','" + b + "','" + c + "','" + d + "','" + ef + "')";
            SqlCommand cmd1 = new SqlCommand(q1, conn);
            dr.Close();
            cmd1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("regsuc.aspx");
            //cmd.ExecuteNonQuery();
        }
    }*/
    //}
    protected void Button3_Click(object sender, EventArgs e)
    {
       
      Response.Redirect("partlist.aspx?Event=" + Session["ename"]); 
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt16(Session["team"]) == 0)
        {
            conn.Close();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM events where ename='" + Session["ename"].ToString() + "'";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "DELETE FROM reg where en='" + Session["ename"].ToString() + "'";
            conn.Open();
            cmd1.ExecuteNonQuery();
            conn.Close();


        }
        else
        {
           
            conn.Close();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM teamevents where ename='" + Session["ename"].ToString() + "'";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "DELETE FROM teamreg where en='" + Session["ename"].ToString() + "'";
            conn.Open();
            cmd1.ExecuteNonQuery();
            conn.Close();

        }
    }
}