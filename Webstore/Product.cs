using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using Newtonsoft.Json;
using System.Linq;


namespace Webstore
{
    public class Product
    {
        public int ID { get; set; }

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

        public Product GetProductByName(int ID)
        {
            return LoadProducts().First(x => x.ID == ID);
        }

        public List<Product> GetCartProducts(List<int> idList)
        {
            var products = new List<Product>();

            foreach (var id in idList)
            {
                products.Add(LoadProducts().First(x => x.ID == id));
            }

            return products;
        }
    }
}