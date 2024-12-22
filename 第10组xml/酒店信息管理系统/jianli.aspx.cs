using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class jianli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label111.Text = "管理员："+ Session["uname"].ToString();
    }

   
}