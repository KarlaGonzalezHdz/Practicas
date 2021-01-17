using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Ejercicio01_MVC.Controllers
{
    public class Persona
    {
        public string Nombre { get; set; }
        public int Edad { get; set; }
    }
    public class HomeController : Controller
    {
        public HttpStatusCodeResult Index()
        {
            return new HttpStatusCodeResult(301);
        }

        /*
        public JsonResult Index()
        {
            var persona1 = new Persona() { Nombre="Jose", Edad=10 };
            var persona2 = new Persona() { Nombre="Juan", Edad=20 };

            List < Persona > Lista = new List<Persona>();
            Lista.Add(persona1);
            Lista.Add(persona2);
            return Json(Lista, JsonRequestBehavior.AllowGet);
        }
         
        */

        /*
         public ActionResult Index()
        {
            //return View();

            return Content("Primera clase de MVC");
        } 

        */

        /*
        public RedirectResult Index()
        {
            return Redirect("https://www.google.com.mx");
        }

        */

        /*
        public RedirectToRouteResult Index()
        {
            return RedirectToAction("About", "Home");
        }

        */

        /*
        public HttpStatusCodeResult Index()
        {
            return new HttpStatusCodeResult(301);
        }
        */

        public ActionResult About()
        {
            ViewBag.Message = "Página de descripción";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        /*
        public HttpStatusCodeResult Index()
        {
            return new HttpStatusCodeResult(404);
        }

        */


        /*
         * 
        public ContentResult Index()
        {
            return Content("Jose Muñoz");
        }

        */





    }
}