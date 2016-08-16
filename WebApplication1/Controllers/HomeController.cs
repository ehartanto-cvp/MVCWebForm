using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1;
using WebApplication1.Models;

namespace WebApplication2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            QSPrototypeEntities context = new QSPrototypeEntities();
            var programs = context.FUNDINGPROGRAMs.ToList().Select(f => new ViewModel { Id = f.Id, Description = f.Name });
            ViewBag.Programs = programs.Select(p => new SelectListItem { Text = p.Description, Value = p.Id.ToString() });

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}