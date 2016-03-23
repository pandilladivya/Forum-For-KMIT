using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
public partial class searchprofiles : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select rno,uname from setting where (uname like '%' + @search +'%')";
        SqlCommand cmd = new SqlCommand(s, conn);
        cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "uname");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string s = "select rno,uname from setting where (uname like '%' + @search +'%')";
        SqlCommand cmd = new SqlCommand(s, conn);
        cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;
        conn.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "uname");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }
    //GridView1_SelectedIndexChanged
   protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "Name";
            e.Row.Cells[1].Text = "City";
        }
    }
   protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
   {
       int index = GridView1.SelectedIndex;
       Session["sname"] = (GridView1.Rows[index].Cells[0].Text).ToString();
       Response.Redirect("StudentProfile.aspx");
   }
}