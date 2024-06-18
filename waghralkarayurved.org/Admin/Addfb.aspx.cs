using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddActivity : System.Web.UI.Page
{
    DML objdml = new DML();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = objdml.AddAct(txttitle .Text , txtDetails.Text, "0", "0", ddlType.SelectedValue , "0");
    }
}