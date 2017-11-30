using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.IO;
using Newtonsoft.Json;
using System.Linq;
using System.Web;


namespace Webstore
{
    public class Product
    {
        public string Name { get; set; }

        public decimal Price { get; set; }

        public string Description { get; set; }

        public string Particularity { get; set; }

        public string ImagePath { get; set; }

        public string OldPrice
        {
            get
            {
                var price = Convert.ToDecimal(Price);
                return Math.Round(price + (price * (decimal)0.2),2).ToString(CultureInfo.InvariantCulture);
            }
        }

        public List<Product> LoadProducts()
        {
            using (var r = new StreamReader(@"C:\Users\sb\Source\Repos\Webshop\Webstore\Assets\Products.json"))
            {
                var json = r.ReadToEnd();
                return JsonConvert.DeserializeObject<List<Product>>(json);
            }
        }

        public Product GetProductByName(string name)
        {
            return LoadProducts().First(x => x.Name == name);
        }
    }
}