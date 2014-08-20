using IBM.Data.DB2;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using WebDevEx2IoT.Models;

namespace WebDevEx2IoT.Dao
{
    public class WallMountedDao
    {
        string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["wdexConnStr"].ConnectionString;
            }
        }

        public WallMounted find(int id)
        {
            WallMounted ac = null;

            using (DB2Connection con = new DB2Connection(ConnectionString))
            {
                string selectCommand = "SELECT thing_id, brand, ip_addr, set_point_lo, " +
                "set_point_hi, time_off, time_on, btu_per_hr, mount_location, air_filter_type, " +
                "TYPE_NAME(DEREF(thing_id)) AS dev_type FROM wall_mounted WHERE thing_id = wall_mounted_t(@thingId)";

                DB2DataAdapter adpt = new DB2DataAdapter(selectCommand, con);

                adpt.SelectCommand.Parameters.Add("@thingId", id);

                DataSet ds = new DataSet();

                adpt.Fill(ds, "AirCo");

                if (ds.Tables["AirCo"].Rows.Count > 0)
                {
                    DataRow row = ds.Tables["AirCo"].Rows[0];

                    ac = new WallMounted();

                    ac.ThingId = (int)row["THING_ID"];
                    ac.BrandName = (string)row["BRAND"];
                    ac.IpAddress = (string)row["IP_ADDR"];
                    ac.DeviceType = (string)row["DEV_TYPE"];

                    ac.SetPointHi = (Decimal)row["SET_POINT_HI"];
                    ac.SetPointLo = (Decimal)row["SET_POINT_LO"];
                    ac.TimeOff = (DateTime)row["TIME_OFF"];
                    ac.TimeOn = (DateTime)row["TIME_ON"];
                    ac.BtuPerHour = (Decimal)row["BTU_PER_HR"];

                    ac.MountLocation = (string)row["MOUNT_LOCATION"];
                    ac.AirFilterType = (string)row["AIR_FILTER_TYPE"];
                }
            }

            return ac;
        }

        public List<WallMounted> GetAllWallMounted()
        {
            List<WallMounted> airCoUnits = new List<WallMounted>();

            using (DB2Connection con = new DB2Connection(ConnectionString))
            {
                string selectCommand = "SELECT thing_id, brand, ip_addr, set_point_lo, " +
                "set_point_hi, time_off, time_on, btu_per_hr, air_filter_type, mount_location, " +
                "TYPE_NAME(DEREF(thing_id)) AS dev_type FROM wall_mounted";

                DB2DataAdapter adpt = new DB2DataAdapter(selectCommand, con);

                DataSet ds = new DataSet();

                adpt.Fill(ds, "AirCo");

                foreach (DataRow row in ds.Tables["AirCo"].Rows)
                {
                    WallMounted ac = new WallMounted();

                    ac.ThingId = (int)row["THING_ID"];
                    ac.BrandName = (string)row["BRAND"];
                    ac.IpAddress = (string)row["IP_ADDR"];
                    ac.DeviceType = (string)row["DEV_TYPE"];

                    ac.SetPointHi = (Decimal)row["SET_POINT_HI"];
                    ac.SetPointLo = (Decimal)row["SET_POINT_LO"];
                    ac.TimeOff = (DateTime)row["TIME_OFF"];
                    ac.TimeOn = (DateTime)row["TIME_ON"];
                    ac.BtuPerHour = (Decimal)row["BTU_PER_HR"];

                    ac.AirFilterType = (string)row["AIR_FILTER_TYPE"];
                    ac.MountLocation = (string)row["MOUNT_LOCATION"];
                
                    airCoUnits.Add(ac);
                }
            }

            return airCoUnits;
        }

        public void CreateAC(WallMounted ac)
        {
            using (DB2Connection conn = new DB2Connection(ConnectionString))
            {
                string insCommand = "INSERT INTO wall_mounted (brand, ip_addr, set_point_lo, " +
                    "set_point_hi, time_off, time_on, btu_per_hr, mount_location, air_filter_type) " +
                    "VALUES (@brandName, @ipAddress, @setPointLo, " +
                    "@setPointHi, @timeOff, @timeOn, @btuPerHr, @mountLocation, @airFilterType)";

                conn.Open();

                DB2Command insCmd = new DB2Command(insCommand, conn);

                insCmd.Parameters.Add("@brandName", ac.BrandName);
                insCmd.Parameters.Add("@ipAddress", ac.IpAddress);

                insCmd.Parameters.Add("@setPointLo", ac.SetPointLo);
                insCmd.Parameters.Add("@setPointHi", ac.SetPointHi);
                insCmd.Parameters.Add("@timeOff", ac.TimeOff);
                insCmd.Parameters.Add("@timeOn", ac.TimeOn);
                insCmd.Parameters.Add("@btuPerHr", ac.BtuPerHour);

                insCmd.Parameters.Add("@mountLocation", ac.MountLocation);
                insCmd.Parameters.Add("@airFilterType", ac.AirFilterType);

                insCmd.ExecuteNonQuery();
            }
            
        }
    }
}