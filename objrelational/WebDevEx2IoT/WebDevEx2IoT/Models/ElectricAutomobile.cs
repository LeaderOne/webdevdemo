using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class ElectricAutomobile : Automobile
    {
        public double BatteryLevel { get; set; }
        public double FuelBackupLevel { get; set; }
    }
}