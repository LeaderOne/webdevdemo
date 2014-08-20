using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebDevEx2IoT.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Internet of Things device management - Web Dev Example 2";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Demonstrating Object-Relational Management.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
