using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public class Select
{
    SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=esankal1_waghralkar;Persist Security Info=True;User ID=esankal1_Dharvik;Password=eSankalp@1234");
    //SqlConnection con = new SqlConnection("Data Source=ESANKALP-PC\\ESANKALP;Initial Catalog=Waghralkar;Integrated Security=True");
    SqlCommand com;
    DataSet ds = new DataSet();
    SqlDataAdapter Adapter;
    SqlDataReader reader;

    public void Connect()
    {
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }

    public DataSet selectId()
    {
        Connect();
        com = new SqlCommand("select max(id) as Id from mytable", con);
        Adapter = new SqlDataAdapter(com);
        Adapter.Fill(ds, "mytable");
        return ds;
        throw new NotImplementedException();
    }

    public DataSet selectActivity()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select top 3 * from Activity order by ActivityId desc", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Activity");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }
    public DataSet selectActivity1()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Activity order by ActivityId desc", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Activity");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public DataSet selectActivityDet(int actid)
    {
        try
        {
            con.Open();
            com = new SqlCommand("select  * from Activity where ActivityId="+actid, con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Activity");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public DataSet selectAward()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select  * from Award", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Award");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public DataSet selectAwardDet(int actid)
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Activity where ActivityId=" + actid, con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Award");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public DataSet selectBlog()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Blog", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Blog");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public DataSet selectBlogDet(int actid)
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Blog where ActivityId=" + actid, con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Blog");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public DataSet SelectCat()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Category", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Category");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }



    public DataSet SelectItem(int catid)
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Item where CatId="+catid , con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Item");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }


    public DataSet SelectCustomer()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Customer", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Customer");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }



    public DataSet SelectAccount(String CustId)
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Account where CustId="+CustId, con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Account");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }


    public DataSet SelectEmployee()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select  * from Employee", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Employee");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }



    public DataSet SelectSupplier()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from Supplier", con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "Supplier");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }


    public DataSet SelectSupplierAccount()
    {
        try
        {
            con.Open();
            com = new SqlCommand("select * from SuppAccount where SupplierId="+SupplierId, con);
            Adapter = new SqlDataAdapter(com);
            Adapter.Fill(ds, "SuppAccount");
            return ds;
            throw new NotImplementedException();
        }
        finally
        {
            con.Close();
        }
    }

    public string CustId { get; set; }

    public string SupplierId { get; set; }

}