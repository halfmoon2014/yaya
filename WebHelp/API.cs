using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebHelp
{
    public class API
    {
        public static string ServerUrl  = @"http://116.62.154.58:801";
        public static string LoginUrl()
        {
            return ServerUrl + "/login";
        }
        
    }
}
