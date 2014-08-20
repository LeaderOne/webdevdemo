using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class WallMounted : AirConditioningSystem
    {
        public string MountLocation { get; set; }
        public string AirFilterType { get; set; }
    }
}