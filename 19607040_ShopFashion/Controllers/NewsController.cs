using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _19607040_ShopFashion.Models;
namespace _19607040_ShopFashion.Controllers
{
    public class NewsController : Controller
    {
        ShopFasionEntities _db = new ShopFasionEntities();
        // GET: News
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult getNews()
        {
            var v = from t in _db.News
                    where t.hide == true
                    orderby t.datebegin descending
                    select t;
            return PartialView(v.ToList());
        }
    }
}