using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                TextBox3.Text = Request.Cookies["UserName"].Value;
                TextBox4.Attributes["value"] = Request.Cookies["Password"].Value;
            }
            if (Request.Cookies["UserName1"] != null && Request.Cookies["Password1"] != null)
            {
                TextBox1.Text = Request.Cookies["UserName1"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["Password1"].Value;
            }
            if (Request.Cookies["UserName2"] != null && Request.Cookies["Password2"] != null)
            {
                TextBox1.Text = Request.Cookies["UserName2"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["Password2"].Value;
            }
        }
	
    }
   // public void Button2_Click(Object sender, EventArgs args)
    //{
      //  Response.Redirect("adminbulletin.aspx");
   // }
   /* public void Button1_Click(Object sender, EventArgs args)
    {
        //perform validation for the username and password
        /**if (ValidateUser(TextBox1.Text, TextBox2.Text))
        {
            //Call FormsAuthentication.RedirectFromLoginPage, which would set a cookie for validation
            //and depending on the ReturnUrl value in the URL redirect user back to that page(here default.aspx)
            Session["UserId"] = TextBox2.Text;
            Response.Redirect("forumhome1.aspx");
        }/
        Response.Redirect("adminbulletin.aspx");
    }
    */
    
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
	
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
	
    }
    SqlConnection con = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");

    protected void Button1_Click1(object sender, EventArgs e)
    {if(TextBox3.Text=="" || TextBox4.Text=="")
    {
        Label11.Visible = true;
        Label12.Text = "StudentID Required";
        Label12.Visible = true;
    }
    else if (chkRememberMe.Checked)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["UserName"].Value = TextBox3.Text.Trim();
        Response.Cookies["Password"].Value = TextBox4.Text.Trim();
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT [rno],[uname],[password] FROM [dbo].[setting] WHERE [rno]=@username and [password]=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox3.Text);
        cmd.Parameters.AddWithValue("@password", TextBox4.Text);
        SqlDataReader nwReader1 = cmd.ExecuteReader();
        int count = 0;
	
        
        while(nwReader1.Read())
        {
            count++;
        }
	if(count>0)
    {
        Session["uname"] = TextBox3.Text;
        Session["faculty"] = 0;
        Session["admin"] = 0;
        Response.Redirect("forumhome1.aspx");
    }
        else
        {
            Label8.Visible = true;
        }
       
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label13.Visible = true;
            Label14.Visible = true;
        }
        else    if (chkRememberMe.Checked)
        {
            Response.Cookies["UserName1"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Password1"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["UserName1"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password1"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["UserName1"].Value = TextBox1.Text.Trim();
        Response.Cookies["Password1"].Value = TextBox2.Text.Trim();
        if (TextBox1.Text == "kmit" && TextBox2.Text == "1234")
        {
            Response.Redirect("easteregg.aspx");
        }
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [username],[password] FROM [dbo].[adminlogin] WHERE [username]=@username and [password]=@password", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataReader nwReader1 = cmd.ExecuteReader();
            int count = 0;


            while (nwReader1.Read())
            {
                count++;
            }
            if (count > 0)
            {
                Session["uname"] = TextBox1.Text;
                Session["admin"] = 1;
                Response.Redirect("adminbulletin.aspx");
            }
            else
            {
                Label9.Visible = true;
            }
            con.Close();
        }

        catch (SqlException)
        {
            Response.Redirect("404.html");
		
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
	
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == "" || TextBox6.Text == "")
        {
            Label11.Visible = true;
            Label12.Text = "Username Required";
            Label12.Visible = true;
        }
        else if (chkRememberMe.Checked)
        {
            Response.Cookies["UserName2"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Password2"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["UserName2"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password2"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["UserName2"].Value = TextBox5.Text.Trim();
        Response.Cookies["Password2"].Value = TextBox6.Text.Trim();
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT [uname],[password] FROM [dbo].[faculty] WHERE [uname]=@uname and [password]=@password", con);
        cmd.Parameters.AddWithValue("@uname", TextBox5.Text);
        cmd.Parameters.AddWithValue("@password", TextBox6.Text);
        SqlDataReader nwReader1 = cmd.ExecuteReader();
        int count = 0;


        while (nwReader1.Read())
        {
            count++;
        }
        if (count > 0)
        {
            Session["uname"] = TextBox5.Text;
            Session["faculty"] = 1;
            Response.Redirect("forumhome1.aspx");
        }
        else
        {
            Label19.Visible = true;
        }
        con.Close();
    }
}