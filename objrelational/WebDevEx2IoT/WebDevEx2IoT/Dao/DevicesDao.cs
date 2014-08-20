using IBM.Data.DB2;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using WebDevEx2IoT.Models;

namespace WebDevEx2IoT.Dao
{
    public class DevicesDao
    {
        string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["wdexConnStr"].ConnectionString;
            }
        }

        public Device find(int id)
        {
            Device dev = null;

            using (DB2Connection conn = new DB2Connection(ConnectionString))
            {
                string selectCommand = "SELECT thing_id, ip_addr, brand, " +
                "TYPE_NAME(DEREF(thing_id)) AS dev_type FROM connected_thing WHERE thing_id = connected_thing_t(@thingId)";

                DB2DataAdapter adpt = new DB2DataAdapter(selectCommand, conn);

                adpt.SelectCommand.Parameters.Add("@thingId", id);

                conn.Open();

                DataSet ds = new DataSet();

                adpt.Fill(ds, "Device");

                if (ds.Tables["Device"].Rows.Count == 1)
                {
                    DataRow row = ds.Tables["Device"].Rows[0];

                    dev = new Device();

                    dev.ThingId = (int)row["THING_ID"];
                    dev.BrandName = (string)row["BRAND"];
                    dev.IpAddress = (string)row["IP_ADDR"];
                    dev.DeviceType = (string)row["DEV_TYPE"];
                }
            }

            return dev;
        }

        public List<Device> GetListOfDevices()
        {
            List<Device> devices = new List<Device>();

            using (DB2Connection conn = new DB2Connection(ConnectionString))
            {
                string selectCommand = "SELECT thing_id, ip_addr, brand, " +
                "TYPE_NAME(DEREF(thing_id)) AS dev_type FROM connected_thing";

                DB2DataAdapter adpt = new DB2DataAdapter(selectCommand, conn);

                conn.Open();

                DataSet ds = new DataSet();

                adpt.Fill(ds, "Devices");

                foreach (DataRow row in ds.Tables["Devices"].Rows)
                {
                    Device dev = new Device();

                    //CONNECTED_THING
                    dev.ThingId = (int)row["THING_ID"];
                    dev.BrandName = (string)row["BRAND"];
                    dev.IpAddress = (string)row["IP_ADDR"];
                    dev.DeviceType = (string)row["DEV_TYPE"];

                    devices.Add(dev);
                }
            }

            return devices;
        }

        public void CreateDevice(Device dev)
        {
            using (DB2Connection conn = new DB2Connection(ConnectionString))
            {
                conn.Open();

                string insertStmt = "INSERT INTO connected_thing (brand, ip_addr) VALUES (@brandName, @ipAddr)";
                DB2Command insertComm = new DB2Command(insertStmt, conn);

                insertComm.Parameters.Add("@brandName", dev.BrandName);
                insertComm.Parameters.Add("@ipAddr", dev.IpAddress);

                insertComm.ExecuteNonQuery();
            }
        }

        public void DeleteDevice(int id)
        {
            using (DB2Connection conn = new DB2Connection(ConnectionString))
            {
                conn.Open();

                string deleteStmt = "DELETE FROM connected_thing WHERE thing_id = connected_thing_t(@thingId)";
                DB2Command delCommand = new DB2Command(deleteStmt, conn);

                delCommand.Parameters.Add("@thingId", id);

                delCommand.ExecuteNonQuery();
            }
        }
    }
}