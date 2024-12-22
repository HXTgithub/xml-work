using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class mdenglu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string yzm = Request.Cookies["CheckCode"].Value;
        if (Txtyzm.Text == yzm)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/App_Data/manage.xml"));
            XmlNode usernode = doc.SelectSingleNode("/manages/manage[managename='" + Txtmzh.Text + "']");
            if (usernode.ChildNodes[1].InnerText == Txtmmima.Text)
            {
                Session["uname"] = Txtmzh.Text;
                Response.Write("<script>alert('登录成功!');location.href='mzhuye.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误！');location.href='mdenglu.aspx'</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('验证码错误！')</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}