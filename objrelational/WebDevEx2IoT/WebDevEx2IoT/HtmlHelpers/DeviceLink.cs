using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDevEx2IoT.HtmlHelpers
{
    public static class DeviceLink
    {
        public static IHtmlString DeviceHtmlLink(string deviceType)
        {
            string link;
            string label;
            string htmlString;

            switch (deviceType)
            {
                case "WALL_MOUNTED_T":
                    link = "/WallMounted/Index";
                    label = "Wall Mounted";

                    break;

                case "CENTRAL_AIR_T":
                    link = "/CentralAir/Index";
                    label = "Central Air";

                    break;

                case "AIR_CONDITIONING_SYSTEM_T":
                    link = "/AirCo/Index";
                    label = "Air Conditioner";

                    break;

                default:
                    link = null;
                    label = "Device";

                    break;
            }

            if (link != null)
            {
                htmlString = String.Format("<a href=\"{0}\">{1}</a>", link, label);
            }
            else
            {
                htmlString = label;
            }

            return new HtmlString(htmlString);
        }
    }
}