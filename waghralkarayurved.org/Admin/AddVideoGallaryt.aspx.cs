using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddVideoGallaryt : System.Web.UI.Page
{
    DML objdml = new DML();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = objdml.AddVideogallery(txtTitle.Text, txturl.Text, ddlType.SelectedValue);
    }
}