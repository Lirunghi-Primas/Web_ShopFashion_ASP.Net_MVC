using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _19607040_ShopFashion.Models;

namespace _19607040_ShopFashion.Controllers
{
    public class DefaultController : Controller
    {
        ShopFasionEntities _db = new ShopFasionEntities();
        // GET: Default
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult getCategory()
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.categories
                    where t.hide == true
                    orderby t.order ascending
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getCategory1()
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.categories
                    where t.hide == true
                    orderby t.order ascending
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProduct(long id, string metatitle)
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.products
                    where t.categoryid == id && t.hide == true
                    orderby t.datebegin descending
                    select t;
            return PartialView(v.ToList());
        }

    }
}