using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class CentralAir : AirConditioningSystem
    {
        public string RefrigerantType { get; set; }
        public int VoltagePhase { get; set; }
        public int CompressorWarrantyYrs { get; set; }
    }
}