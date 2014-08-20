using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class AirConditioningSystem : Device
    {
        public Decimal SetPointHi { get; set; }
        public Decimal SetPointLo { get; set; }

        public DateTime TimeOff { get; set; }
        public DateTime TimeOn { get; set; }

        public Decimal BtuPerHour { get; set; }
    }
}