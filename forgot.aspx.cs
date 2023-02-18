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
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void fg(Object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                string uid = txtEmail.Text;
                con.Open();
                string qry = "select * from Person where email='" + e+ "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (!sdr.HasRows)
                {
                    L1.Text = "حساب کاربری با ایمیل وارد شده صحیح نمی باشد";
                }
                else
                {
                    string username = Application["username"].ToString();
                    con.Close();
                    con.Open();
                    qry = "UPDATE Person SET pass = '741852 where usernsme='"+username+"'";
                    cmd = new SqlCommand(qry, con);
                    sdr = cmd.ExecuteReader();
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