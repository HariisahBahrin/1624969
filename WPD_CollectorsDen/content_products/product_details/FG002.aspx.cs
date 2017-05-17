using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPD_CollectorsDen.content_products.product_details
{
    public partial class FG002 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void place_order_link_Click(object sender, EventArgs e)
        {
            LitPlaceOrder.Text = "Thank you for placing your order!";
        }
    }
}