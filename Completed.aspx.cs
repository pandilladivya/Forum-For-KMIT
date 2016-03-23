using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.IO;

public partial class Completed : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        //string UpPath;
        //UpPath = "D:\\"+Session["cid"].ToString();
       // if (!Directory.Exists(UpPath))
        //{
          //  Directory.CreateDirectory("D:\\"+Session["cid"].ToString()+"\\");
        //}
       // string filename = System.IO.Path.GetFileName(FileUploadControl.FileName);
        //FileUploadControl.PostedFile.SaveAs("D:\\" + Session["cid"].ToString() + "\\"+Session["uname"].ToString());
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        conn.Open();
        string filename = System.IO.Path.GetFileName(FileUploadControl.FileName);
        //FileUploadControl.PostedFile.SaveAs("D:\\" + Session["cid"].ToString() + "\\" + Session["uname"].ToString());
        SqlCommand cmd4 = conn.CreateCommand();
        cmd4.CommandType = System.Data.CommandType.Text;
        cmd4.CommandText = "INSERT INTO [dbo].[chalcom] ([cid],[uname],[link],[filepath]) VALUES(" + Convert.ToInt16(Session["cid"]) + ",'" + Session["uname"].ToString() + "','" + TextBox1.Text + "','filepath'";
            //D:\\" + Session["cid"].ToString() + "\\" + Session["uname"].ToString() + "')";
        cmd4.ExecuteNonQuery();
    }
}