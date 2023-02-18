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
    public partial class history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String uid = Application["uid"].ToString();
                Response.Write("<script>alert(uid)</script>");

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
                string qry = "SELECT books.name, books.writer,books.cost, Person.username as selller,Person.username as buyer, Person.username FROM Sell JOIN Person ON buyer_id = '" + uid + "'join books on book_id = books.id ";
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