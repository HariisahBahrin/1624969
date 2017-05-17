using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPD_CollectorsDen.admin
{
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];
            string filename = ProductID + ".jpg";

            imagecurrent.ImageUrl = "~/images/products/" + filename;

        }

        protected void UploadImage_Click(object sender, EventArgs e)
        {   
            string ProductID = Request.QueryString["ProductID"];
            string filename = ProductID + ".jpg";
            string saveLocation = Server.MapPath("~/images/products/" + filename);

            UploadControlimage.SaveAs(saveLocation);
            Lituploadedimage.Text = "Image has been uploaded successfully!";

        }

        protected void return_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome_admin.aspx");
        }
    }
}


