using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.SqlClient;

namespace WPD_CollectorsDen
{
    public partial class register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network; Initial Catalog=; Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText="INSERT INTO Customer_Tbl(First_Name, Last_Name, cus_username, cus_password, email, phone_number, cus_address) VALUES ('"+ txtFirstName.Text+"','"+ txtLastName.Text+"','"+ txtusername.Text+"','"+ txtpassword.Text + "','" + txtEmail.Text + "','" + txtPhoneNum.Text + "','" + txtAddress.Text + "' )";
            cmd.Parameters.AddWithValue("First_Name", txtFirstName.Text);
            cmd.Parameters.AddWithValue("Last_Name", txtLastName.Text);
            cmd.Parameters.AddWithValue("cus_username", txtusername.Text);
            cmd.Parameters.AddWithValue("cus_password", txtpassword.Text);
            cmd.Parameters.AddWithValue("emai", txtEmail.Text);
            cmd.Parameters.AddWithValue("phone_number", txtPhoneNum.Text);
            cmd.Parameters.AddWithValue("cus_address", txtAddress.Text);
            cmd.ExecuteNonQuery();

            
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtusername.Text = String.Empty;
            txtpassword.Text = String.Empty;
            txtpassword2.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtEmail2.Text = String.Empty;
            txtPhoneNum.Text = String.Empty;
            txtAddress.Text = String.Empty;
        }

        }
}