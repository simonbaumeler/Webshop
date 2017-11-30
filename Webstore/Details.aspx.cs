using System;
using System.Collections.Generic;

namespace Webstore
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LstVwProduct.DataSource = new List<Product> { new Product().GetProductByName("Micha Frei") };
            LstVwProduct.DataBind();
        }
    }
}