<%@ WebHandler Language="C#" Class="pageHandler" %>

using System;
using System.Web;

public class pageHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}