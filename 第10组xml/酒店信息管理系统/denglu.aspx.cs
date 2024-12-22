using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class denglu : System.Web.UI.Page
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
            doc.Load(Server.MapPath("~/App_Data/userdata.xml"));
            XmlNode usernode = doc.SelectSingleNode("/users/user[username='" + Txtzh.Text + "']");
            if(usernode != null)
            {
                if (usernode.ChildNodes[1].InnerText == Txtmima.Text.ToString())
                {
                    Session["uname"] = Txtzh.Text;
                    Response.Write("<script>alert('登录成功!')</script>");
                    Response.Redirect("zhuye.aspx");
                }
                else
                {
                    Response.Write("<script>alert('请输入正确的密码！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('该用户未注册请重试！')</script>");
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