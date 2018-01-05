<%@ WebHandler Language="C#" Class="indexHandler" %>

using System;
using System.Web;
using Utils;
using Structs;
using WebHelp;
using Newtonsoft.Json;
public class indexHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string name = context.Request.Form["inputName"].ToString();
        string password = context.Request.Form["inputPassword"].ToString();
        string postData = @"name={0}&password={1}";
        string repose = HttpRequst.PostFunction(API.LoginUrl(), string.Format(postData, name, password));
        MessageContentStc<User> messageContentStc = JsonConvert.DeserializeObject<MessageContentStc<User>>(repose);//反序列化
        if (messageContentStc.Errcode == 0)
        {
            context.Response.Cookies["__hk"].Value = Authenticator.Login(messageContentStc.Data);            
            context.Response.Redirect("../page/main");
        }
        else
        {
            context.Response.Redirect("../index.html");
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