using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class trial1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
    int titleID;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        titleID =Convert.ToInt32(DropDownList1.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into AForum values (" + titleID + ",'" + TextBox1.Text + "','JOE','" + DateTime.Now + "')";
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}