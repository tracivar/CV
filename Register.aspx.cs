using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;

namespace WebDesignNew
{
    public partial class WebForm3 : System.Web.UI.Page
    {
      

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-L9KD6U3\SQLEXPRESS;Initial Catalog=regs;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", fName.Text);
            cmd.Parameters.AddWithValue("@LastName", lName.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Telephone", tel.Text);
            cmd.Parameters.AddWithValue("@Password", password.Text);
            cmd.Parameters.AddWithValue("@RePassword", repassword.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            {
                Response.Redirect("Registered.aspx");
            }
            con.Close();
        }
    }
}