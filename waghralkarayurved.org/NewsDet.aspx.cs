﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class NewsDet : System.Web.UI.Page
{
    DML objdml = new DML();
    Select sel = new Select();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillActivity();
        }
    }
    public void fillActivity()
    {
        DataSet ds = new DataSet();
        Select sel = new Select();
        ds = sel.selectActivityDet(Convert.ToInt32(Request.QueryString["ActivityId"]));
        DetailsView1.DataSource = ds.Tables[0];
        DetailsView1.DataBind();
    }
}