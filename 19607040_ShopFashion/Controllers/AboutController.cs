using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _19607040_ShopFashion.Models;

namespace _19607040_ShopFashion.Controllers
{
    public class AboutController : Controller
    {
        ShopFasionEntities _db = new ShopFasionEntities();
        // GET: About
        public ActionResult Index()
        {
            
            return View();
        }
    }
}