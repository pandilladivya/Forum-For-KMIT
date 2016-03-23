using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

partial class forumhome1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    ///////////////////////////////////////////////////////////////
    private void Page_Load(object sender, System.EventArgs e)
    {
        /*this obj is referring to some class in which GetRecord method is present which return the record from database. You can write your //own class and method.//ds1.Tables[0].Rows[i][1].ToString()*/
       
        SqlCommand command1 = conn.CreateCommand();
        SqlCommand command2 = conn.CreateCommand();
        string s1="";
        conn.Open();
        
        for (int i = 0; i <= 10; i++)
        {
            DateTime time = DateTime.Now.AddDays(i);              // Use current time
            string format = "yyyy-MM-dd";
            command1.CommandText = "SELECT ename from events where estart='" + time.ToString(format) + "'";

            SqlDataReader dr = command1.ExecuteReader();
            command2.CommandText = "SELECT ename from teamevents where estart='" + time.ToString(format) + "'";
           
            while (dr.Read())
            {
                s1 += "<a href=stueve.aspx style=\"font-family: Narkism; font-size: 200%; font-weight:bold; font-style: normal; color:#FFFFFF\">" + "Event \"" + dr.GetString(0) + "\" starts on " + time.ToString(format) + "    ***    " + "</a></td> ";
            } dr.Close();
            SqlDataReader dr1 = command2.ExecuteReader();

            while (dr1.Read())
            {
                s1 += "<a href=stueve.aspx style=\"font-family: Narkism; font-size: 200%; font-weight:bold; font-style: normal; color:#FFFFFF\">" + "Team Event \"" + dr1.GetString(0) + "\" starts on " + time.ToString(format) + "    ***    " + "</a></td> ";
            }
            dr1.Close();
        }
     
s1 += "";
lt1.Text = s1.ToString();

    string s2;
        SqlCommand command5 = conn.CreateCommand();//(DateTime.Now.AddDays(-1))
       //command1.CommandText = "SELECT header from bull";
        command5.CommandText = "SELECT header from bull where [valid]="+1;
       
        SqlDataReader dr5 = command5.ExecuteReader();
        
       
       s2 = "";
       while( dr5.Read())
           {
               s2 += "<a href=# style=\"font-family: Narkism; font-size: 200%; font-weight:bold; font-style: normal; color:#FFFFFF\">"  + dr5.GetString(0) + "   ***    " + "</a></td> ";
       }
       dr5.Close();
s2 += "";
bulletin.Text = s2.ToString();
dr5.Close();

        Label8.Text = "Welcome," + (String)Session["uname"];
        conn.Close();
       
      /*  try
        {

            List<string> bull = new List<string>();
            conn.Close();
            SqlCommand command = new SqlCommand(
              "SELECT header FROM bull;",
              conn);
            conn.Open();

            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    bull.Add(reader.GetString(0));
                    //Console.WriteLine(reader.GetString(0));
                }
            }
            else
            {
                Console.WriteLine("No rows found.");
            }
            reader.Close();




            bull1.Text = bull[0];
            bull2.Text = bull[1];
            bull3.Text = bull[2];
            bull4.Text = bull[3];
            bull5.Text = bull[4];



            conn.Close();
            //Response.Redirect("forumcontrols.aspx");
        }
        catch (SqlException)
        {
            Response.Redirect("404.html");

        }*/
        try
        {
           SqlCommand cmd1 = conn.CreateCommand();

        }
        catch (SqlException)
        {
            Response.Redirect("404.html");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("challengeform.aspx");
    }
}
