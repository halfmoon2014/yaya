using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace WebHelp
{
    /// <summary>
    /// 业务模板加载
    /// </summary>
    public class Ext
    {
        /// <summary>
        /// 获取业务模板HTML
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static string GetHtml(HttpRequest Request,string key)
        {
            StreamReader sR = File.OpenText(Request.PhysicalApplicationPath + "\\page\\ext\\"+ key + ".ext");
            string nextLine;
            StringBuilder stringBuilder = new StringBuilder();
            while ((nextLine = sR.ReadLine()) != null)
            {
                stringBuilder.Append(nextLine);
            }
            sR.Close();
            return stringBuilder.ToString();
        }
    }
}
