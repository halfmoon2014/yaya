using System;
using WebHelp;

public partial class page_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageMain pageMain = new PageMain();
        fullname.InnerHtml = pageMain.GetFullName(Request);
    }
}