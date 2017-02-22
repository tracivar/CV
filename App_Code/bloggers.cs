using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDesignNew.App_Code
{

    public class bloggers
    {

     public int id { get; set; }
    public string name { get; set; }
    public string country { get; set; }
    public string image { get; set; }
    public string review { get; set; }

        public bloggers(int id, string name, string country, string image, string review)
        {
            this.id = id;
            this.name = name;
            this.country = country;
            this.image = image;
            this.review = review;
        }
        
    }
}