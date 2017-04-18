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
        {
            SmtpClient SmtpClient = new SmtpClient();
            SmtpClient.EnableSsl = true;
            SmtpClient.UseDefaultCredentials = false;
            SmtpClient.Host = "smtp.gmail.com";
            SmtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("riisuriisu80@gmail.com", "");

            SmtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("riisuriisu80@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtFirstName.Text + " Subject: " + txtSubject.Text;
            msg.Body = txtMsg.Text;
            SmtpClient.Send(msg);

            try
            {
                SmtpClient.Send(msg);
                litResult.Text =
                    "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
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
