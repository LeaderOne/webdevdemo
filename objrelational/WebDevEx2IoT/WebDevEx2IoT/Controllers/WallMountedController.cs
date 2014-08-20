using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDevEx2IoT.Dao;
using WebDevEx2IoT.Models;

namespace WebDevEx2IoT.Controllers
{
    public class WallMountedController : Controller
    {
        private DevicesDao devicesDao = new DevicesDao();
        private WallMountedDao wallMountedDao = new WallMountedDao();

        //
        // GET: /WallMounted/

        public ActionResult Index()
        {
            List<WallMounted> acUnits = wallMountedDao.GetAllWallMounted();

            return View(acUnits);
        }

        //
        // GET: /WallMounted/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /WallMounted/Create

        [HttpPost]
        public ActionResult Create(WallMounted acUnit)
        {
            try
            {
                wallMountedDao.CreateAC(acUnit);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /WallMounted/Delete/5

        public ActionResult Delete(int id)
        {
            WallMounted acUnit = wallMountedDao.find(id);

            return View(acUnit);
        }

        //
        // POST: /WallMounted/Delete/5

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
