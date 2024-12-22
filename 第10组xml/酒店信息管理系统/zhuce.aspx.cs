using System;
using System.Xml;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Activities.Statements;

public partial class zhuce : System.Web.UI.Page
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
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/App_Data/userdata.xml"));
            XmlElement usernode = doc.CreateElement("user");
            XmlElement namenode = doc.CreateElement("username");
            namenode.InnerText = Txtusername.Text;
            Session["uname"] = Txtusername.Text;
            usernode.AppendChild(namenode);
            XmlElement mimanode = doc.CreateElement("usermima");
            mimanode.InnerText = Txtpassword.Text;
            usernode.AppendChild(mimanode);
            XmlElement sexnode = doc.CreateElement("sex");
            sexnode.InnerText = RadioButtonList1.SelectedValue;
            usernode.AppendChild(sexnode);
            XmlElement questionnode = doc.CreateElement("mibaoquestion");
            questionnode.InnerText = passquestion.SelectedValue;
            usernode.AppendChild(questionnode);
            XmlElement ansernode = doc.CreateElement("mibaoanser");
            ansernode.InnerText = Txtpqansers.Text;
            usernode.AppendChild(ansernode);
            XmlElement telnode = doc.CreateElement("tel");
            telnode.InnerText = Txttel.Text;
            usernode.AppendChild(telnode);
            XmlElement emailnode = doc.CreateElement("email");
            emailnode.InnerText = Txtemail.Text;
            usernode.AppendChild(emailnode);
            XmlElement birthdatenode = doc.CreateElement("birthdate");
            birthdatenode.InnerText = Txtbirthdate.Text;
            usernode.AppendChild(birthdatenode);
            XmlElement photonode = doc.CreateElement("photo");
            photonode.InnerText = Session["photo"].ToString();
            usernode.AppendChild(photonode);
            doc.DocumentElement.AppendChild(usernode);
            doc.Save(Server.MapPath("~/App_Data/userdata.xml"));
            Response.Write("<script>alert('注册成功！');location.href='denglu.aspx'</script>)");
            Response.Redirect("zhuye.aspx");
        }
        catch
        {
            Response.Write("<script>alert('注册失败！';)</script>)");
        }
    }

    protected void Txtusername_TextChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/userdata.xml"));
        XmlNodeList userlist = doc.SelectNodes("//user[username='" + Txtusername.Text + "']");
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