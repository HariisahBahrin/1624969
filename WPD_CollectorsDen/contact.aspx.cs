using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WPD_CollectorsDen
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)

        {   //Following codes are provided and freely to used by www.aspsnippets.com
            MailMessage msg = new MailMessage(txtEmail.Text, "project8clothes@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = "Name: " + txtFirstName.Text + txtLastName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtMsg.Text;

            msg.IsBodyHtml = true;
            SmtpClient smclient = new SmtpClient();
            smclient.Host = "smtp.gmail.com";
            smclient.EnableSsl = true;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential();
            credentials.UserName = "project8clothes@gmail.com";
            credentials.Password = "dbs@12345";
            smclient.UseDefaultCredentials = true;
            smclient.Credentials = credentials;
            smclient.Port = 587;
            smclient.Send(msg);
            try
            {
                smclient.Send(msg);
                litResult.Text =
                    "<p>Your Message has been sent!</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }

}
