  using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label28.Visible = false;
        TextBox12.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

      
        Session["en"] = TextBox9.Text;
        try
        {
            SqlConnection con = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
            con.Open();
            if (RadioButtonList1.SelectedIndex==0)
            {
                 string query = "insert into events(ename,regstart,regend,estart,eend,efrom,eto,venue,eligibility,description) values('" + TextBox9.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                
                Response.Redirect("evesuc.aspx");
            }
            if (TextBox12.Text!=null)
            {
                string query = "insert into teamevents(ename,regstart,regend,estart,eend,efrom,eto,venue,eligibility,description,tmno) values('" + TextBox9.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "',"+TextBox12.Text+")";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
               
                Response.Redirect("evesuc.aspx");
            }
           
           
                
               
            
        }
        catch(SqlException )
        {

        }
        catch(InvalidOperationException )
        {

        }

        }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue.CompareTo("Team") == 0)
        {
            Label28.Visible = true;
            TextBox12.Visible = true;
        }
    }
}
