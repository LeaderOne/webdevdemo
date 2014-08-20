using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.Models
{
    public class Device
    {
        public int ThingId { get; set; }
        public string BrandName { get; set; }
        public string IpAddress { get; set; }
        public string DeviceType { get; set; }
    }
}