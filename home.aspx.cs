using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "The KMIT Forum is a platform that allows students to freely communicate with each other and to further enhance the sense of comunity among students.";
        Label3.Text = "Hence,we request you to kindly adhere to the terms stated in the registration,barring which your account will be suspended.";
    }
}