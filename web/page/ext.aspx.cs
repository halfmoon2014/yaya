using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using WebHelp;
public partial class page_ext : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request["id"];
        PageMain pageMain = new PageMain();
        fullname.InnerHtml = pageMain.GetFullName(Request);
        container.InnerHtml=Ext.GetHtml(Request,id);
    }
}