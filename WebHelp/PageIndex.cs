using System.Web;
using Utils;
using Structs;
using Newtonsoft.Json;
namespace WebHelp
{
    public class PageIndex
    {
        /// <summary>
        /// 登陆验证
        /// </summary>
        /// <param name="context"></param>
        /// <returns></returns>
        public bool Verify(HttpContext context)
        {
            string name = context.Request.Form["inputName"].ToString();
            string password = context.Request.Form["inputPassword"].ToString();
            string rememberMe = "";
            if (!string.IsNullOrEmpty(context.Request.Form["chekRememberMe"]))
            {
                rememberMe = context.Request.Form["chekRememberMe"].ToString();
            }
            context.Response.Cookies["__name"].Value = name;
            context.Response.Cookies["__rememberMe"].Value = rememberMe;
            string postData = @"name={0}&password={1}";
            string repose = HttpRequst.PostFunction(API.LoginUrl(), string.Format(postData, name, password));
            MessageContentStc<User> messageContentStc = JsonConvert.DeserializeObject<MessageContentStc<User>>(repose);//反序列化
            if (messageContentStc.Errcode == 0)
            {
                context.Response.Cookies["__hk"].Value = Authenticator.Login(messageContentStc.Data);
                if (string.IsNullOrEmpty(rememberMe))
                {
                    context.Response.Cookies["__name"].Value = "";
                }
                return true;                
            }
            else
            {
                return false;                
            }
        }
    }
}
