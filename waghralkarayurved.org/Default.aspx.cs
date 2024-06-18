using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DML objdml = new DML();
    Select sel = new Select();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ds = sel.selectId();
            lblid.Text = (Convert.ToInt32(ds.Tables[0].Rows[0]["Id"].ToString()) + 1).ToString();
            //fillActivity();
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int a = objdml.insertBloodDonor(Convert.ToInt32(lblid.Text), txtname.Text,txtemailid.Text,datepicker.Text ,RadioButtonList1 .SelectedValue ,  txtmob.Text,txtcity .Text, txtmsg.Text );
        if (a == 1)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "pop", "insertModal();", true);
            Class1.WebMsgBox.Show("Waghralkar Ayurved: Your Appointment is successful");

            string authKey = "101818AqU1G9eGuo568bc879";
            //Multiple mobiles numbers separated by comma
            string mobileNumber = txtmob.Text;
            //Sender ID,While using route4 sender id should be 6 characters long.
            string senderId = "WGHRKR";
            //Your message to send, Add URL encoding here.
            string message = HttpUtility.UrlEncode("Hi, " + txtname.Text + " Thank You for Appointment with Waghralkar Ayurved on "+datepicker.Text+" ! Your Appointment Id is :" + lblid.Text + "  Plz Visit : www.waghralkarayurved.org");

            //Prepare you post parameters
            StringBuilder sbPostData = new StringBuilder();
            sbPostData.AppendFormat("authkey={0}", authKey);
            sbPostData.AppendFormat("&mobiles={0}", mobileNumber);
            sbPostData.AppendFormat("&message={0}", message);
            sbPostData.AppendFormat("&sender={0}", senderId);
            sbPostData.AppendFormat("&route={0}", "4");

            try
            {
                //Call Send SMS API
                string sendSMSUri = "http://smschannel.searchamravati.in/api/sendhttp.php";
                //Create HTTPWebrequest
                HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
                //Prepare and Add URL Encoded data
                UTF8Encoding encoding = new UTF8Encoding();
                byte[] data = encoding.GetBytes(sbPostData.ToString());
                //Specify post method
                httpWReq.Method = "POST";
                httpWReq.ContentType = "application/x-www-form-urlencoded";
                httpWReq.ContentLength = data.Length;
                using (Stream stream = httpWReq.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
                //Get the response
                HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                string responseString = reader.ReadToEnd();

                //Close the response
                reader.Close();
                response.Close();
            }
            catch (SystemException ex)
            {
                Class1.WebMsgBox.Show(ex.Message.ToString());
            }

        }
        else
        {
            Class1.WebMsgBox.Show("Waghralkar Ayurved: Your Mobile no. Already exist");

        }
    }

    public void fillActivity()
    {
        DataSet ds = new DataSet();
        Select sel = new Select();
        ds = sel.selectActivity();
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
    }
}