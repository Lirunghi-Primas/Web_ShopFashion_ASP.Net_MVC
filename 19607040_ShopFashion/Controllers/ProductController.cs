using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _19607040_ShopFashion.Models;

namespace _19607040_ShopFashion.Controllers
{
    public class ProductController : Controller
    {
        ShopFasionEntities _db = new ShopFasionEntities();
        // GET: Product
        public ActionResult Index(string meta)
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.products
                    where t.hide == true
                    orderby t.order ascending
                    select t;
            return View(v.ToList());
        }
        public ActionResult Detail(long id)
        {
            var v = from t in _db.products
                    where t.id == id
                    select t;
            return View(v.FirstOrDefault());
        }
        public ActionResult getAllProduct()
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.products
                    where  t.hide == true
                    orderby t.order ascending
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProductByIDCategory(long id, string metatitle)
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.products
                    where t.hide == true && t.categoryid == id
                    orderby t.order ascending
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getCategory(string metatitle)
        {
            ViewBag.meta = "san-pham";
            var v = from t in _db.categories
                    where t.meta == metatitle
                    orderby t.order ascending
                    select t;
            return View(v.FirstOrDefault());
        }
    }
}