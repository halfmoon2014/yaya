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
        PageIndex pageIndex = new PageIndex();
        if (pageIndex.Verify(context))
        {
            context.Response.Redirect("../../page/main");
        }
        else
        {
            context.Response.Redirect("../../index.html");
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