using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class Automobile : Device
    {
        public double Mileage { get; set; }
        public double OilLevel { get; set; }
        public double TirePressure { get; set; }
    }
}