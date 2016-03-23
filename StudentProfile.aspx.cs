using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;


public partial class StudentProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
        con.Open();
        string query = "select rno,uname,abt,interest,contact from setting where rno='"+Session["sname"]+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr=cmd.ExecuteReader();
        while (dr.Read())
        {
            Label6.Text=Convert.ToString(dr[0]);
            Label7.Text=Convert.ToString(dr[1]);
            Label8.Text=Convert.ToString(dr[2]);
            Label9.Text=Convert.ToString(dr[3]);
            Label10.Text=Convert.ToString(dr[4]);
        }
        
        con.Close();
       
    }
}