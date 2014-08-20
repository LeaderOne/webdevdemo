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
    public class CentralAirDao
    {
        string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["wdexConnStr"].ConnectionString;
            }
        }

        public CentralAir find(int id)
        {
            CentralAir ac = null;

            using (DB2Connection con = new DB2Connection(ConnectionString))
            {
                string selectCommand = "SELECT thing_id, brand, ip_addr, set_point_lo, " +
                "set_point_hi, time_off, time_on, btu_per_hr, refrigerant_type, voltage_phase, compressor_warranty, " +
                "TYPE_NAME(DEREF(thing_id)) AS dev_type FROM central_air WHERE thing_id = central_air_t(@thingId)";

                DB2DataAdapter adpt = new DB2DataAdapter(selectCommand, con);

                adpt.SelectCommand.Parameters.Add("@thingId", id);

                DataSet ds = new DataSet();

                adpt.Fill(ds, "AirCo");

                if (ds.Tables["AirCo"].Rows.Count > 0)
                {
                    DataRow row = ds.Tables["AirCo"].Rows[0];

                    ac = new CentralAir();

                    ac.ThingId = (int)row["THING_ID"];
                    ac.BrandName = (string)row["BRAND"];
                    ac.IpAddress = (string)row["IP_ADDR"];
                    ac.DeviceType = (string)row["DEV_TYPE"];

                    ac.SetPointHi = (Decimal)row["SET_POINT_HI"];
                    ac.SetPointLo = (Decimal)row["SET_POINT_LO"];
                    ac.TimeOff = (DateTime)row["TIME_OFF"];
                    ac.TimeOn = (DateTime)row["TIME_ON"];
                    ac.BtuPerHour = (Decimal)row["BTU_PER_HR"];

                    ac.RefrigerantType = (string)row["REFRIGERANT_TYPE"];
                    ac.VoltagePhase = (int)row["VOLTAGE_PHASE"];
                    ac.CompressorWarrantyYrs = (int)row["COMPRESSOR_WARRANTY"];
                }
            }

            return ac;
        }

        public List<CentralAir> GetAllCentralAir()
        {
            List<CentralAir> airCoUnits = new List<CentralAir>();

            using (DB2Connection con = new DB2Connection(ConnectionString))
            {
                string selectCommand = "SELECT thing_id, brand, ip_addr, set_point_lo, " +
                "set_point_hi, time_off, time_on, btu_per_hr, refrigerant_type, voltage_phase, compressor_warranty, " + 
                "TYPE_NAME(DEREF(thing_id)) AS dev_type FROM central_air";

                DB2DataAdapter adpt = new DB2DataAdapter(selectCommand, con);

                DataSet ds = new DataSet();

                adpt.Fill(ds, "AirCo");

                foreach (DataRow row in ds.Tables["AirCo"].Rows)
                {
                    CentralAir ac = new CentralAir();

                    ac.ThingId = (int)row["THING_ID"];
                    ac.BrandName = (string)row["BRAND"];
                    ac.IpAddress = (string)row["IP_ADDR"];
                    ac.DeviceType = (string)row["DEV_TYPE"];

                    ac.SetPointHi = (Decimal)row["SET_POINT_HI"];
                    ac.SetPointLo = (Decimal)row["SET_POINT_LO"];
                    ac.TimeOff = (DateTime)row["TIME_OFF"];
                    ac.TimeOn = (DateTime)row["TIME_ON"];
                    ac.BtuPerHour = (Decimal)row["BTU_PER_HR"];

                    ac.RefrigerantType = (string)row["REFRIGERANT_TYPE"];
                    ac.VoltagePhase = (int)row["VOLTAGE_PHASE"];
                    ac.CompressorWarrantyYrs = (int)row["COMPRESSOR_WARRANTY"];

                    airCoUnits.Add(ac);
                }
            }

            return airCoUnits;
        }

        public void CreateAC(CentralAir ac)
        {
            using (DB2Connection conn = new DB2Connection(ConnectionString))
            {
                string insCommand = "INSERT INTO central_air (brand, ip_addr, set_point_lo, " +
                    "set_point_hi, time_off, time_on, btu_per_hr, refrigerant_type, voltage_phase, " + 
                    "compressor_warranty) VALUES (@brandName, @ipAddress, @setPointLo, " +
                    "@setPointHi, @timeOff, @timeOn, @btuPerHr, @refrigerantType, @voltagePhase, @compressorWarrantyYrs)";

                conn.Open();

                DB2Command insCmd = new DB2Command(insCommand, conn);

                insCmd.Parameters.Add("@brandName", ac.BrandName);
                insCmd.Parameters.Add("@ipAddress", ac.IpAddress);

                insCmd.Parameters.Add("@setPointLo", ac.SetPointLo);
                insCmd.Parameters.Add("@setPointHi", ac.SetPointHi);
                insCmd.Parameters.Add("@timeOff", ac.TimeOff);
                insCmd.Parameters.Add("@timeOn", ac.TimeOn);
                insCmd.Parameters.Add("@btuPerHr", ac.BtuPerHour);

                insCmd.Parameters.Add("@refrigerantType", ac.RefrigerantType);
                insCmd.Parameters.Add("@voltagePhase", ac.VoltagePhase);
                insCmd.Parameters.Add("@compressorWarrantyYrs", ac.CompressorWarrantyYrs);

                insCmd.ExecuteNonQuery();
            }
        }
    }
}