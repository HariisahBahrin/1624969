﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPD_CollectorsDen.content_products
{
    public partial class FG003 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void place_order_link_Click3(object sender, EventArgs e)
        {
            LitPlaceOrder.Text = "Thank you for placing your order!";
        }
    }
}