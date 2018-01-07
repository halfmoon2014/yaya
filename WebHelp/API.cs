using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebHelp
{
    /// <summary>
    /// API
    /// </summary>
    public class API
    {
        public static string ServerUrl  = @"http://116.62.154.58:801";
        /// <summary>
        /// 登陆验证地址
        /// </summary>
        /// <returns></returns>
        public static string LoginUrl()
        {
            return ServerUrl + "/login";
        }
        
    }
}
