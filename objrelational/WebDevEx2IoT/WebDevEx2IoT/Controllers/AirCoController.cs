using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDevEx2IoT.Dao;
using WebDevEx2IoT.Models;

namespace WebDevEx2IoT.Controllers
{
    public class AirCoController : Controller
    {
        private DevicesDao devicesDao = new DevicesDao();
        private AirConditionerDao acDao = new AirConditionerDao();

        //
        // GET: /AirCo/

        public ActionResult Index()
        {
            List<AirConditioningSystem> acSystems = acDao.GetAllAirCo();

            return View(acSystems);
        }

        //
        // GET: /AirCo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /AirCo/Create

        [HttpPost]
        public ActionResult Create(AirConditioningSystem acSystem)
        {
            try
            {
                acDao.CreateAC(acSystem);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /AirCo/Delete/5

        public ActionResult Delete(int id)
        {
            AirConditioningSystem ac = acDao.find(id);

            return View(ac);
        }

        //
        // POST: /AirCo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                devicesDao.DeleteDevice(id);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
