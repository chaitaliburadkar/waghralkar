using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "Admin" && TextBox1.Text == "Waghralkar!123")
        {
            
           
            FormsAuthentication.RedirectFromLoginPage(TextBox2.Text, CheckBox1.Checked);
            //Response.Redirect("invoice.aspx");
        }
        else
        {
            Class1.WebMsgBox.Show("Invalid UserId / Pasword");
        }
    }
}