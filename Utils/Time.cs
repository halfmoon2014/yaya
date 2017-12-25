using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Web;
namespace Utils
{
    public class Time
    {
        public static long GetTimeStamp(DateTime dt)
        {
            System.DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new System.DateTime(1970, 1, 1)); // 当地时区            
            return (long)(dt - startTime).TotalSeconds; // 相差秒数;
        }

        public static DateTime ConvertStringToDateTime(long unixTimeStamp)
        {            
            System.DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new System.DateTime(1970, 1, 1)); // 当地时区
            return startTime.AddSeconds(unixTimeStamp);
        }

    }

}
