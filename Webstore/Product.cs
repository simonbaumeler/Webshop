using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using Newtonsoft.Json
using System.Linq;
using System.Web;

namespace Webstore
{
    public class Product
    {
        public string Name { get; set; }

        public decimal Price { get; set; }

        public string Description { get; set; }

        public string Particulatity { get; set; }

        public Image Picture { get; set; }

        public List<Product> LoadProducts()
        {
            using (var r = new StreamReader("file.json"))
            {
                var json = r.ReadToEnd();
                return JsonConvert.DeserializeObject<List<Product>>(json);
            }
        }
    }
}