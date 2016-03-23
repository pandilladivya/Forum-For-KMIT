using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.IO;

public partial class registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    SqlConnection conn2 = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=kmitdb;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string UpPath;
        UpPath = "D:\\FORUMPROFILES";
        if (!Directory.Exists(UpPath))
        {
            Directory.CreateDirectory("D:\\FORUMPROFILES\\");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                Button1.Text = "Valid";
                Boolean stud = false;

                conn2.Open();
                SqlCommand cmd1 = conn2.CreateCommand();
                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.CommandText = "select * from studentdata2012 where sroll=" + "'" + TextBox2.Text + "'";
                SqlCommand cmd2 = conn.CreateCommand();
                conn.Open();
                cmd2.CommandType = System.Data.CommandType.Text;
                cmd2.CommandText = "SELECT [rno],[uname],[password] FROM [dbo].[setting] WHERE [rno]='" + TextBox2.Text + "'";
                SqlDataReader nwReader = cmd1.ExecuteReader();
                SqlDataReader nwReader2 = cmd2.ExecuteReader();
                int counter = 0;
                int counter1 = 0;

                while (nwReader.Read())
                {
                    //get rows
                    counter++;
                }
                while (nwReader2.Read())
                {
                    //get rows
                    counter1++;
                }

                conn.Close();

                if (counter > 0 && counter1 == 0)
                {
                    stud = true;
                    //Do the Update code here
                }
                if (stud == true)
                {

                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "INSERT INTO [dbo].[setting] ([rno],[uname],[password]) VALUES(" + "'" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "')";
                    cmd.ExecuteNonQuery();

                    Response.Redirect("login.aspx");
                    conn.Close();
                    conn2.Open();
                    SqlCommand cmd3 = conn2.CreateCommand();
                    cmd3.CommandType = System.Data.CommandType.Text;
                    cmd3.CommandText = "select * from studentdata2012 where sroll=" + "'" + TextBox2.Text + "'";
                    SqlDataReader nwReader1 = cmd3.ExecuteReader();
                    int countern = 0;
                    while (nwReader.Read())
                    {
                        //get rows
                        countern++;
                    }
                    if (FileUploadControl.HasFile && countern != 0)
                    {
                        if (FileUploadControl.PostedFile.ContentType == "image/jpeg")
                        {

                            string filename = System.IO.Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.PostedFile.SaveAs("D:\\FORUMPROFILES\\" + TextBox2.Text + ".jpeg");
                            StatusLabel.Text = "Upload status: File uploaded!";
                            conn.Open();
                            SqlCommand cmd4 = conn.CreateCommand();
                            cmd4.CommandType = System.Data.CommandType.Text;
                            cmd4.CommandText = "INSERT INTO [dbo].[setting] ([imagepath]) VALUES('" + "D:\\FORUMPROFILES\\" + TextBox2.Text + ".jpeg" + "') where [rno]=" + TextBox2.Text;
                            cmd4.ExecuteNonQuery();

                        }
                    }
                    else
                    {
                        if (counter == 0)
                        {
                            Label6.Visible = true;
                        }
                        if (counter1 > 0)
                        {
                            Label7.Visible = true;
                        }
                    }
                }
            }


        }


        catch (SqlException)
        {
            Response.Redirect("404.html");
        }


    }
}
        
    
  