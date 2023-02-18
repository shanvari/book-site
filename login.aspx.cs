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
    public partial class login : System.Web.UI.Page
    {
        private object leror;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void authenticate(Object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                string un = username.Text;
                String p = pass.Text;
                con.Open();
                string qry = "select * from Person where username='" + un + "' and pass='" + p + "';";
                L2.Text = qry;

                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows) { 
                    Application["username"] = un;

                    Application["uid"] = sdr["id"];
                    Application["type"] = sdr["type"];
                    Response.Redirect("home.aspx");
                }
                else
                {
                    L2.Text = "نام کاربری یا رمز عبور صحیح نمی باشد";

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
