using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class BeerStill : Device
    {
        public string MashType { get; set; }
        public double Temperature { get; set; }
        public double SettlingTimeHrs { get; set; }
    }
}