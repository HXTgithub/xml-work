using System;
using System.Xml;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Activities.Statements;

public partial class retrievemima : System.Web.UI.Page
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

    

    protected void Txtusername_TextChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/userdata.xml"));
        XmlNode node = doc.SelectSingleNode("/users/user[username='" + Txtusername.Text + "']");
        if (node == null)
        {
            Response.Write("<script>alert('该用户未注册');</script>)");
        }
        else
        {
            XmlElement question = (XmlElement)node.SelectSingleNode("mibaoquestion");
            Txtquestion.Text = question.InnerText;
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
       // try
       // {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/App_Data/userdata.xml"));
            XmlNode node = doc.SelectSingleNode("/users/user[username='" + Txtusername.Text + "']");
            if (node==null)
            {
                Response.Write("<script>alert('该用户未注册');</script>)");
            }
            else
            {
                XmlElement anser = (XmlElement)node.SelectSingleNode("mibaoanser");
                if (Txtpqansers.Text == anser.InnerText)
                {
                    if(Txtpassword.Text == Txtcpassword.Text)
                    {
                        XmlElement mima = (XmlElement)node.SelectSingleNode("usermima");
                        mima.InnerText = Txtpassword.Text;
                        doc.Save(Server.MapPath("~/App_Data/userdata.xml"));
                        Response.Write("<script>alert('密码更改成功');location.href='denglu.aspx'</script>)");
                    }
                    else
                    {
                        Response.Write("<script>alert('请确保密码与确认密码一致');location.href='retrievemima.aspx'</script>)");
                    }
                }
                else
                {
                    Response.Write("<script>alert('密保答案不正确');</script>)");
                }
                
            }
        //}
        //catch
      //  {
           // Response.Write("<script>alert('出问题');</script>)");
       // }
    }
}