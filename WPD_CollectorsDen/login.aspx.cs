using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System.Data.SqlClient;

namespace WPD_CollectorsDen
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network; Initial Catalog=; Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Admin_Tbl WHERE admin_Username='" + txtloginusername.Text + " ' AND admin_pw=' " + txtloginpassword.Text + "' ");
            cmd.Connection = con;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {
                Response.Redirect("about_us.aspx");
            }
            else
            {
                //Label3.Visible = true;
                //Label3.Text = "ACCESS DENIED";
                string display = "ACCESS DENIED";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                con.Close();
            }
        }
    }

}