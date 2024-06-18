using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public class DML
{
    SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=esankal1_waghralkar;Persist Security Info=True;User ID=esankal1_Dharvik;Password=eSankalp@1234");
    //SqlConnection con = new SqlConnection("Data Source=ESANKALP-PC\\ESANKALP;Initial Catalog=Waghralkar;Integrated Security=True");
    SqlCommand com;

    public void Connect()
    {
        con.Close();
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }

    public int insertBloodDonor(int id, String Name,String email, String Date,String Gender, String MobileNo, String City,String msg)
    {
        int a;
        Connect();
        com = new SqlCommand("SPAppointment", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;
        p1 = com.Parameters.Add("@Id", SqlDbType.Int);
        p1.Value = id;
        p1 = com.Parameters.Add("@Name", SqlDbType.NVarChar);
        p1.Value = Name;
        p1 = com.Parameters.Add("@Email", SqlDbType.NVarChar);
        p1.Value = email;
        p1 = com.Parameters.Add("Date", SqlDbType.NVarChar);
        p1.Value = Date;
        p1 = com.Parameters.Add("Gender", SqlDbType.NVarChar);
        p1.Value = Gender;
        p1 = com.Parameters.Add("Mobile", SqlDbType.NVarChar);
        p1.Value = MobileNo;

        p1 = com.Parameters.Add("City", SqlDbType.NVarChar);
        p1.Value = City;
        p1 = com.Parameters.Add("@Message", SqlDbType.NVarChar);
        p1.Value = msg;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }


    public int AddAct(String Title,String Details, String Image1, String Image2 ,String Type, String Date)
    {
        int a;
        Connect();
        com = new SqlCommand("SPActivity", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;
        
        p1 = com.Parameters.Add("@Title", SqlDbType.NVarChar);
        p1.Value = Title;
        p1 = com.Parameters.Add("@Details", SqlDbType.NVarChar);
        p1.Value = Details;
        p1 = com.Parameters.Add("@Image1", SqlDbType.NVarChar);
        p1.Value = Image1;
        p1 = com.Parameters.Add("@Image2", SqlDbType.NVarChar);
        p1.Value = Image2;
        p1 = com.Parameters.Add("@Type", SqlDbType.NVarChar);
        p1.Value = Type;
        p1 = com.Parameters.Add("@Date", SqlDbType.NVarChar);
        p1.Value = Date;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }
    public int AddAward(String Title, String Details, String Image1, String Image2, String Type, String Date)
    {
        int a;
        Connect();
        com = new SqlCommand("SPAward", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;

        p1 = com.Parameters.Add("@Title", SqlDbType.NVarChar);
        p1.Value = Title;
        p1 = com.Parameters.Add("@Details", SqlDbType.NVarChar);
        p1.Value = Details;
        p1 = com.Parameters.Add("@Image1", SqlDbType.NVarChar);
        p1.Value = Image1;
        p1 = com.Parameters.Add("@Image2", SqlDbType.NVarChar);
        p1.Value = Image2;
        p1 = com.Parameters.Add("@Type", SqlDbType.NVarChar);
        p1.Value = Type;
        p1 = com.Parameters.Add("@Date", SqlDbType.NVarChar);
        p1.Value = Date;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }

    public int AddBlog(String Title, String Details, String Image1, String Image2, String Type, String Date)
    {
        int a;
        Connect();
        com = new SqlCommand("SPBlog", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;

        p1 = com.Parameters.Add("@Title", SqlDbType.NVarChar);
        p1.Value = Title;
        p1 = com.Parameters.Add("@Details", SqlDbType.NVarChar);
        p1.Value = Details;
        p1 = com.Parameters.Add("@Image1", SqlDbType.NVarChar);
        p1.Value = Image1;
        p1 = com.Parameters.Add("@Image2", SqlDbType.NVarChar);
        p1.Value = Image2;
        p1 = com.Parameters.Add("@Type", SqlDbType.NVarChar);
        p1.Value = Type;
        p1 = com.Parameters.Add("@Date", SqlDbType.NVarChar);
        p1.Value = Date;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }
  


    public int AddPhotogallary(String Title, String Photo1, String Photo2,String Type)
    {
        int a;
        Connect();
        com = new SqlCommand("SPPhotogallary", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;
        p1 = com.Parameters.Add("@Title", SqlDbType.NVarChar);
        p1.Value = Title;
        p1 = com.Parameters.Add("@Photo1", SqlDbType.NVarChar);
        p1.Value = Photo1;
        p1 = com.Parameters.Add("@Photo2", SqlDbType.NVarChar);
        p1.Value = Photo2;
        p1 = com.Parameters.Add("@Type", SqlDbType.NVarChar);
        p1.Value = Type;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }


    public int AddVideogallery(String Title, String UTubeurl,String Type )
    {
        int a;
        Connect();
        com = new SqlCommand("SPVideogallery", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;
        p1 = com.Parameters.Add("@Title", SqlDbType.NVarChar);
        p1.Value = Title;
        p1 = com.Parameters.Add("@UTubeurl", SqlDbType.NVarChar);
        p1.Value = UTubeurl;
        p1 = com.Parameters.Add("@Type", SqlDbType.NVarChar);
        p1.Value = Type;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }

    public int Feedback(string Name, string MobNo, string Email, String Technology, String Office, String CompSelected, String Feedback, String Photo)
    {
        int a;
        Connect();
        com = new SqlCommand("SPFeedback", con);
        com.CommandType = CommandType.StoredProcedure;
        SqlParameter p1;

        p1 = com.Parameters.Add("@Name", SqlDbType.VarChar);
        p1.Value = Name;
        p1 = com.Parameters.Add("@MobNo", SqlDbType.VarChar);
        p1.Value = MobNo;
        p1 = com.Parameters.Add("@Email", SqlDbType.VarChar);
        p1.Value = Email;
        p1 = com.Parameters.Add("@Technology", SqlDbType.VarChar);
        p1.Value = Technology;
        p1 = com.Parameters.Add("@Office", SqlDbType.VarChar);
        p1.Value = Office;
        p1 = com.Parameters.Add("@CompSelected", SqlDbType.VarChar);
        p1.Value = CompSelected;
        p1 = com.Parameters.Add("@Feedback", SqlDbType.VarChar);
        p1.Value = Feedback;
        p1 = com.Parameters.Add("@Image", SqlDbType.VarChar);
        p1.Value = Photo;
        p1 = com.Parameters.Add("@count", SqlDbType.Int);
        p1.Direction = ParameterDirection.Output;
        a = com.ExecuteNonQuery();
        return a;
        throw new NotImplementedException();
    }
}

 	
