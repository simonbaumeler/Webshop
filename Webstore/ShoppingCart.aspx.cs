﻿using System;
using System.Collections.Generic;
using System.Linq;
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
                var parsedId = Convert.ToInt16(id);
                var products = (List<int>) Session["products"];
                if (products.All(x => x != parsedId))
                {
                    products.Add(parsedId);
                    Session["products"] = products;
                }
            }
            else
            {
                var products = new List<int> {Convert.ToInt16(id)};
                Session["products"] = products;
            }

            LstVwProductCart.DataSource = new Product().GetCartProducts((List<int>) Session["Products"]);
            LstVwProductCart.DataBind();
        }

        protected void DeleteItemFromCart_OnCommand(object sender, CommandEventArgs e)
        {
            var products = (List<int>)Session["products"];
            products.Remove(products.First(x => x == Convert.ToInt16(e.CommandArgument)));
            LstVwProductCart.DataSource = new Product().GetCartProducts((List<int>)Session["Products"]);
            LstVwProductCart.DataBind();
        }
    }
}