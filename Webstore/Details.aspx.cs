using System;
using System.Collections.Generic;
using System.Runtime.Remoting.Messaging;
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
    }
}