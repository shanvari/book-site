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
    public partial class prof : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
                //   string qry = "select * from books;";
                // SqlCommand cmd = new SqlCommand(qry, con);
                //  SqlDataReader sdr = cmd.ExecuteReader();
                string qry = "SELECT books.name, books.writer,books.date,books.cost FROM books where owner ='"+ Application["uid"].ToString() +"'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    //sdr.
                    GridView1.DataSource = sdr;
                    GridView1.DataBind();
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