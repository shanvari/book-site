using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Book_webApplication
{
    public partial class sighnup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sighn(Object sender,EventArgs e)
        {
            try{
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                string uid = username.Text;
                con.Open();
                string qry = "select * from Person where username='" + uid +  "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    L2.Text = "نام کاربری انتخاب شده است";
                    con.Close();
                }
                else { 
                    con.Close();
                    con.Open();
                    qry = "select * from Person where email='" + txtEmail.Text + "'";
                    cmd = new SqlCommand(qry, con);
                    sdr = cmd.ExecuteReader();
                    if (sdr.Read()){    L2.Text = "حساب کاربری با ایمیل وارد شده قبلا ساخته شده است";   }
                    else{
                        con.Close();
                        con.Open();
                        qry = "insert into Person(fname,username,pass,buyer,email,admin) values(' " +fname.Text+ "','" + uid + "','"+pass.Text+ "',"+true + ",'" + txtEmail.Text+ "',"+false+")";
                        cmd = new SqlCommand(qry, con);
                        sdr = cmd.ExecuteReader();
                        Response.Redirect("home.aspx");
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}