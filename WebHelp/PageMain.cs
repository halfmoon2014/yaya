using Structs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace WebHelp
{
    public class PageMain
    {
        public string GetFullName(HttpRequest Request) {
            string cer = Request.Cookies["__hk"].Value;
            User user = Authenticator.GetUser(cer);
            if (user == null)
            {
                return  "未登陆";
            }
            else
            {
                return user.FullName;
            }
        }
    }
}
