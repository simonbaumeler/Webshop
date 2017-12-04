using System;
using System.Collections.Generic;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;

namespace Webstore
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LstVwProduct.DataSource = new List<Product> { new Product().GetProductByName(Convert.ToInt16(Request.QueryString["id"])) };
            LstVwProduct.DataBind();
        }

        protected void AddItemToCart_OnClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx" + "?ID=" + Request.QueryString["ID"]);
        }
    }
}