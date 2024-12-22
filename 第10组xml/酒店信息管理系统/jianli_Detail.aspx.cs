using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

public partial class jianli_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id1 = Request.QueryString["id"].ToString();
        XsltArgumentList xsla = new XsltArgumentList();
        xsla.AddParam("gid", "", id1);
        Xml1.TransformArgumentList = xsla;
    }

   
}