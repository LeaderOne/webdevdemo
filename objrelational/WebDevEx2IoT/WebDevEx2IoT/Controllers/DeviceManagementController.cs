using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDevEx2IoT.Dao;
using WebDevEx2IoT.Models;

namespace WebDevEx2IoT.Controllers
{
    public class DeviceManagementController : Controller
    {
        private DevicesDao devicesDao = new DevicesDao();

        //
        // GET: /DeviceManagement/

        public ActionResult Index()
        {
            List<Device> devices = devicesDao.GetListOfDevices();

            return View(devices);
        }

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /DeviceManagement/Create

        [HttpPost]
        public ActionResult Create(Device device)
        {
            try
            {
                devicesDao.CreateDevice(device);

                return RedirectToAction("Index");
            }
            catch
            {
                return View(device);
            }
        }

        //
        // GET: /DeviceManagement/Delete/5

        public ActionResult Delete(int id)
        {
            Device dev = devicesDao.find(id);

            return View(dev);
        }

        //
        // POST: /DeviceManagement/Delete/5

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
