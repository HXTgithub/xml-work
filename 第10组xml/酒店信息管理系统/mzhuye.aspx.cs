using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class mzhuye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label11.Text = "管理员："+ Session["uname"].ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/client.xml"));
        XmlNode node = doc.SelectSingleNode("/clients/client[clientroom='" + clientg.SelectedValue.ToString() + "']");
        XmlElement cname = (XmlElement)node.SelectSingleNode("clientname");
        XmlElement croom = (XmlElement)node.SelectSingleNode("clientroom");
        XmlElement cphone = (XmlElement)node.SelectSingleNode("clientphone");
        XmlElement crdate = (XmlElement)node.SelectSingleNode("roomdate");
        XmlElement crday = (XmlElement)node.SelectSingleNode("roomtime");
        Txtcn.Text = cname.InnerText;
        Txtcr.Text = croom.InnerText;
        Txtcp.Text = cphone.InnerText;
        Txtdate.Text = crdate.InnerText;
        Txtt.Text = crday.InnerText;
    }

    protected void update_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/client.xml"));
        XmlNode node = doc.SelectSingleNode("/clients/client[clientname='" + Txtcn.Text + "']");
        if(node == null)
        {
            Response.Write("<script>alert('未找到该用户，请确定用户名是否正确');</script>)");
        }
        else
        {
            XmlElement croom = (XmlElement)node.SelectSingleNode("clientroom");
            croom.InnerText = Txtcr.Text;
            XmlElement cphone = (XmlElement)node.SelectSingleNode("clientphone");
            cphone.InnerText = Txtcp.Text;
            XmlElement crdate = (XmlElement)node.SelectSingleNode("roomdate");
            crdate.InnerText = Txtdate.Text;
            XmlElement crday = (XmlElement)node.SelectSingleNode("roomtime");
            crday.InnerText = Txtt.Text;
            doc.Save(Server.MapPath("~/App_Data/client.xml"));
            Response.Write("<script>alert('修改信息成功');location.href='mzhuye.aspx'</script>)");
        }
    }

    protected void dlt_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/client.xml"));
        XmlNode node = doc.SelectSingleNode("/clients/client[clientroom='" + Txtcr.Text + "']");
        if (node == null)
        {
            Response.Write("<script>alert('未找到该用户，请确定用户名是否正确');location.href='mzhuye.aspx'</script>)");
        }
        else
        {
            XmlNode dltnode = node;
            dltnode.ParentNode.RemoveChild(dltnode);
            doc.Save(Server.MapPath("~/App_Data/client.xml"));
            XmlDocument doc4 = new XmlDocument();
            doc4.Load(Server.MapPath("~/App_Data/rooms.xml"));
            XmlNode rnode = doc4.SelectSingleNode("/rooms/room[@roomid='" + Session["roomid"].ToString() + "']");
            if (rnode != null)
            {
                XmlElement condnode = (XmlElement)rnode.SelectSingleNode("condition");
                if (condnode != null)
                {
                    condnode.InnerText = "未预订";
                    doc4.Save(Server.MapPath("~/App_Data/rooms.xml"));
                }
                else
                {
                    // 处理找不到<condition>节点的情况
                    Response.Write("未找到<condition>节点。");
                }
            }
            Response.Write("<script>alert('删除信息成功');location.href='mzhuye.aspx'</script>)");
        }
    }
}