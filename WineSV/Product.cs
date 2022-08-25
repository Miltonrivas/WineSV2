using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WineSV
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public int Quantity { get; set; }
        public string Image { get; set; }
        public string id_categ { get; set; }
    }
}