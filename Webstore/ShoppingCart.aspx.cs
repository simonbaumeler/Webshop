﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webstore
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            if (Session["Products"] != null)
            {
                var products = (List<int>) Session["products"];
                products.Add(Convert.ToInt16(id));
                Session["products"] = products;
            }
            else
            {
                var products = new List<int> {Convert.ToInt16(id)};
                Session["products"] = products;
            }

            LstVwProductCart.DataSource = new Product().GetCartProducts((List<int>) Session["Products"]);
            LstVwProductCart.DataBind();
        }
    }
}