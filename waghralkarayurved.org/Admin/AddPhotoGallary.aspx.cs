using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddPhotoGallary : System.Web.UI.Page
{
    DML objdml = new DML();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String Photo1 = FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("~/Img/" + Photo1));
        lbl1.Text = Photo1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {        
        int a = objdml.AddPhotogallary(txtTitle.Text, lbl1.Text, lbl2.Text, ddlType.SelectedValue);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String Photo2 = FileUpload2.FileName;
        FileUpload2.SaveAs(Server.MapPath("~/Img/" + Photo2));
        lbl2.Text = Photo2;
    }
}