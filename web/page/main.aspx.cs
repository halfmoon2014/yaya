using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Structs;
using WebHelp;

public partial class page_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageMain pageMain = new PageMain();
        fullname.InnerHtml = pageMain.GetFullName(Request);
    }
}