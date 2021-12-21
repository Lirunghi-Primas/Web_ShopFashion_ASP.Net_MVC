using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace _19607040_ShopFashion
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

              routes.MapRoute("Tin tuc", "{type}",
              new { controller = "News", action = "Index", meta = UrlParameter.Optional },
              new RouteValueDictionary
              {
                { "type", "tin-tuc" }
              },
              namespaces: new[] { "_19607040_ShopFashion.Controllers" });

              routes.MapRoute("Lien he", "{type}",
              new { controller = "Contact", action = "Index", meta = UrlParameter.Optional },
              new RouteValueDictionary
              {
                { "type", "lien-he" }
              },
              namespaces: new[] { "_19607040_ShopFashion.Controllers" });

            routes.MapRoute("Gioi thieu", "{type}",
            new { controller = "About", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                { "type", "gioi-thieu" }
            },
            namespaces: new[] { "_19607040_ShopFashion.Controllers" });

            routes.MapRoute("Trang chu", "{type}",
            new { controller = "Default", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                { "type", "trang-chu" }
            },
            namespaces: new[] { "_19607040_ShopFashion.Controllers" });


            routes.MapRoute("IndexProduct", "{type}",
            new { controller = "Product", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                { "type", "san-pham" }
            },
            namespaces: new[] { "_19607040_ShopFashion.Controllers" });

            routes.MapRoute("Product", "{type}/{metatitle}",
            new { controller = "Product", action = "getCategory", metatitle = UrlParameter.Optional },
            new RouteValueDictionary
            {
                { "type", "san-pham" }
            },
            namespaces: new[] { "_19607040_ShopFashion.Controllers" });

            routes.MapRoute("Detail", "{type}/{meta}/{id}",
            new { controller = "Product", action = "Detail", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                { "type", "san-pham" }
            },
            namespaces: new[] { "_19607040_ShopFashion.Controllers" });

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Default", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "_19607040_ShopFashion.Controllers" }
                );
        }
    }
}
