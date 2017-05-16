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

        {   //Following codes are provided by www.aspsnippets.com, it has been modified.
            try
            {
                MailMessage msg = new MailMessage();
            msg.To.Add("project8clothes@gmail.com");
            msg.From = new MailAddress(txtEmail.Text);
            msg.Subject = txtSubject.Text;
                msg.Body = "Name:" + txtFirstName.Text + txtLastName.Text + "<br/>Email:" + txtEmail.Text + "<br/>Message:" + txtMsg.Text;

            msg.IsBodyHtml = true;
            SmtpClient smclient = new SmtpClient();
            smclient.Host = "smtp.gmail.com";
            smclient.EnableSsl = true;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("project8clothes@gmail.com", "dbs@12345");
            smclient.UseDefaultCredentials = true;
            smclient.Credentials = credentials;
            smclient.Port = 587;
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
