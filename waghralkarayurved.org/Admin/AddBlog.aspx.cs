using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddBlog : System.Web.UI.Page
{
    DML objdml = new DML();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            String Image2 = FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("~/Img/" + Image2));
            lbl2.Text = Image2;
        }
        catch(SystemException ex)
        {
            Class1.WebMsgBox.Show(ex.Message.ToString());
        
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String Image1 = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Img/" + Image1));
            lbl1.Text = Image1;
        }
        catch (SystemException ex)
        {
            Class1.WebMsgBox.Show(ex.Message.ToString());

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            int a = objdml.AddBlog(txttitle.Text, txtDetails.Text, lbl1.Text, lbl2.Text, ddlType.SelectedValue, txtDate.Text);

            if (a == 1)
            {
                Class1.WebMsgBox.Show("Blog Added Successfully");
            }
        }
        catch (SystemException ex)
        {
            Class1.WebMsgBox.Show(ex.Message.ToString());

        }
       
    }
}