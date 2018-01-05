<%@ WebHandler Language="C#" Class="mainHandler" %>

using System;
using System.Web;
using Utils;
using Structs;
using WebHelp;
using Newtonsoft.Json;
public class mainHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {

        context.Response.ContentType = "text/plain";
        string method = context.Request.Form["method"].ToString();
        if (method == "webinit")
        {
            string cer = context.Request.Form["hk"].ToString();
            User user = Authenticator.GetUser(cer);
            WebInit webInit = new WebInit();
            MessageContentStc<WebInit> messageContentStc = new MessageContentStc<WebInit>();
            messageContentStc.Data = webInit;
            if (user == null)
            {
                messageContentStc.Errcode = 1;
                messageContentStc.Errmsg = "未找到用户信息";
            }
            else
            {
                webInit.fullname = user.FullName;                
            }
            context.Response.Write(JsonConvert.SerializeObject(messageContentStc));
        }
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
public class WebInit
{
    public string fullname { get; set; }
}