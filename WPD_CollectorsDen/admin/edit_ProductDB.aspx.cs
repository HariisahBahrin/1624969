﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPD_CollectorsDen.admin
{
    public partial class edit_database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void return_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_addproducts.aspx");
        }

        protected void EditButton(object sender, FormViewPageEventArgs e)
        {
            LitProductUpdateResult.Text = "New product has been updated!";
        }

        protected void DeleteButton(object sender, FormViewPageEventArgs e)
        {
            LitProductDeleteResult.Text = "New product has been deleted!";
        }
    }
}