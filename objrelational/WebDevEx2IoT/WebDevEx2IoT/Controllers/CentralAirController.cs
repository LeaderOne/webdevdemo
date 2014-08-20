using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDevEx2IoT.Dao;
using WebDevEx2IoT.Models;

namespace WebDevEx2IoT.Controllers
{
    public class CentralAirController : Controller
    {
        DevicesDao devicesDao = new DevicesDao();
        CentralAirDao centralAirDao = new CentralAirDao();

        //
        // GET: /CentralAir/

        public ActionResult Index()
        {
            List<CentralAir> centralAirUnits = centralAirDao.GetAllCentralAir();

            return View(centralAirUnits);
        }

        //
        // GET: /CentralAir/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /CentralAir/Create

        [HttpPost]
        public ActionResult Create(CentralAir centralAirUnit)
        {
            try
            {
                centralAirDao.CreateAC(centralAirUnit);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /CentralAir/Delete/5

        public ActionResult Delete(int id)
        {
            CentralAir centralAirUnit = centralAirDao.find(id);

            return View(centralAirUnit);
        }

        //
        // POST: /CentralAir/Delete/5

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
