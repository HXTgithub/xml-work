using System;
using System.Xml;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Activities.Statements;

public partial class mzhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       try {
            if (Txtmpassword.Text == Txtmcpassword.Text)
            {
                if (key.Text == "114514")
                {
                    XmlDocument doc = new XmlDocument();
                    doc.Load(Server.MapPath("~/App_Data/manage.xml"));
                    XmlElement managenode = doc.CreateElement("manage");
                    XmlElement namenode = doc.CreateElement("managename");
                    namenode.InnerText = Txtmname.Text;
                    managenode.AppendChild(namenode);
                    XmlElement mimanode = doc.CreateElement("managemima");
                    mimanode.InnerText = Txtmpassword.Text;
                    managenode.AppendChild(mimanode);
                    XmlElement sexnode = doc.CreateElement("managesex");
                    sexnode.InnerText = RadioButtonList1.SelectedValue;
                    managenode.AppendChild(sexnode);
                    XmlElement telnode = doc.CreateElement("managephone");
                    telnode.InnerText = Txtmtel.Text;
                    managenode.AppendChild(telnode);
                    doc.DocumentElement.AppendChild(managenode);
                    doc.Save(Server.MapPath("~/App_Data/manage.xml"));
                    Response.Write("<script>alert('注册成功！');location.href='mzhuye.aspx'</script>)");
                }
                else
                {
                    Response.Write("<script>alert('管理员密匙错误，无法注册！');location.href='mzhuce.aspx'</script>)");
                }
            }
            else
            {
                Response.Write("<script>alert('请保证密码与确认密码一致');</script>)");
            }
            
        }
        catch
        {
            Response.Write("<script>alert('注册失败！')</script>)");
        }
    }

    protected void Txtusername_TextChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/manage.xml"));
        XmlNodeList userlist = doc.SelectNodes("//manage[managename='" + Txtmname.Text + "']");
        if (userlist.Count > 0)
        {
           lblts1.Text = "该用户名已占用";
        }
        else
        {
           lblts1.Text = "该用户名可用";
            //Session["username"] = Txtusername.Text;
        }
    }
}