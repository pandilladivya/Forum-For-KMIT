using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class calendar : System.Web.UI.Page
{
     protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {

        DataTable dt = GetDates();
        DataTable dat = GetDates1();
       // DateTime eventDate;
        string eventType = string.Empty;

     /*   if (dt.Rows.Count > 0){

            for (int i = 0; i < dt.Rows.Count; i++){
                //Where ColumnFieldForDate and ColumnFieldForEventType are the field names from your database
                eventDate = Convert.ToDateTime(dt.Rows[i]["estart"]);
                eventType = dt.Rows[i]["ename"].ToString();
                if (e.Day.Date == eventDate)
                {
                    if (eventType.CompareTo("Debate")==0)
                    {
                        e.Cell.BackColor = System.Drawing.Color.Red;
                    }
                    else if (eventType != "")
                    {
                        e.Cell.BackColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Cell.BackColor = System.Drawing.Color.Yellow;
                    }*/       
    }


    public DataTable GetDates()
    {

        DataTable dt = new DataTable();
      
        SqlConnection connection = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
        try
        {
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT estart from events", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt);
            
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }

        return dt;
    }
    public DataTable GetDates1()
    {
        DataTable dt1 = new DataTable();
        SqlConnection connection = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
        try
        {
            connection.Open();
            SqlCommand sqlCmd1 = new SqlCommand("SELECT estart from teamevents", connection);
            SqlDataAdapter sqlDa1 = new SqlDataAdapter(sqlCmd1);
            sqlDa1.Fill(dt1);
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            connection.Close();
        }

        return dt1;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
       /* while(sdr.Read() )
        {
            Calendar1.se =sdr[0];
        }*/
     /*    SqlConnection sc = new SqlConnection("Data Source=NEPTUNE\\SQL;Initial Catalog=forum;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select estart from events", sc);
        SqlDataReader sdr= cmd.ExecuteReader();
        if (sdr.Read() != null)
        {
            foreach ( dr in sdr[0])
            {

            }
        }*/

    }
  /*  protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime nextDate;
         SqlConnection sc = new SqlConnection("Data Source=NEPTUNE\\SQL;Initial Catalog=forum;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select estart from events", sc);
        SqlDataReader sdr= cmd.ExecuteReader();
        if ( sdr.Read()!= null)
        {
            foreach (dr in sdr[0])
            {
               // nextDate = (DateTime)dr["HolidayDate"];
                if (nextDate == e.Day.Date)
                {
                    e.Cell.BackColor = System.Drawing.Color.Pink;
                }
            }
        }
    }*/
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        //Table dt = new Table();
        string cd=Calendar1.SelectedDate.ToString("M/d/yyyy");
        Label1.Text = cd;
        SqlConnection sc = new SqlConnection("Data Source=HARSHA\\SQLEXPRESS;Initial Catalog=forum;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select * from events where estart='"+cd+"'",sc);
        DataSet ds = new DataSet();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        GridView1.Visible = true;
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from teamevents where estart='" + cd + "'", sc);
        DataSet ds1 = new DataSet();
        sda1.Fill(dt1);
        GridView2.DataSource = dt1;
        GridView2.DataBind();
        GridView2.Visible = true;  
    }
}