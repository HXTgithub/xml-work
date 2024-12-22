using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class jiudianxinxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "用户：" + Session["uname"].ToString();
    }
    protected void roomView_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "您选择的房间号为："+ roomView.SelectedValue.ToString();
        Session["roomid"] = roomView.SelectedValue.ToString();
        
    }

    protected void reserve_Click(object sender, EventArgs e)
    {
        try
        {
            XmlDocument doc2 = new XmlDocument();
            doc2.Load(Server.MapPath("~/App_Data/client.xml"));
            XmlNodeList nodeList = doc2.SelectNodes("/clients/client[clientroom='" + Session["roomid"].ToString() + "']");
            if (nodeList.Count>0){
                Response.Write("<script>alert('该房间已经被预定！请重新选择房间！');</script>)");
            }
            else
            {
                XmlDocument doc = new XmlDocument();
                XmlDocument doc1 = new XmlDocument();
                XmlDocument doc4 = new XmlDocument();
                doc.Load(Server.MapPath("~/App_Data/client.xml"));
                doc1.Load(Server.MapPath("~/App_Data/userdata.xml"));
                doc4.Load(Server.MapPath("~/App_Data/rooms.xml"));
                XmlElement clientnode = doc.CreateElement("client");

                XmlElement cnnode = doc.CreateElement("clientname");
                cnnode.InnerText = Session["uname"].ToString();
                clientnode.AppendChild(cnnode);

                XmlElement roomidnode = doc.CreateElement("clientroom");
                roomidnode.InnerText = Session["roomid"].ToString();
                clientnode.AppendChild(roomidnode);

                XmlElement phonenode = doc.CreateElement("clientphone");
                XmlElement unode = (XmlElement)doc1.SelectSingleNode("/users/user[username='" + Session["uname"].ToString() + "']");
                XmlNode rnode = doc4.SelectSingleNode("/rooms/room[@roomid='" + Session["roomid"].ToString() + "']");
                if (rnode != null)
                {
                    XmlElement condnode = (XmlElement)rnode.SelectSingleNode("condition");
                    if (condnode != null)
                    {
                        condnode.InnerText = "已预订";
                        doc4.Save(Server.MapPath("~/App_Data/rooms.xml"));
                    }
                    else
                    {
                        // 处理找不到<condition>节点的情况
                        Response.Write("未找到<condition>节点。");
                    }
                }

                phonenode.InnerText = unode.ChildNodes[5].InnerText;
                clientnode.AppendChild(phonenode);

                XmlElement datenode = doc.CreateElement("roomdate");
                datenode.InnerText = rdate.Text;
                clientnode.AppendChild(datenode);

                XmlElement daynode = doc.CreateElement("roomtime");
                daynode.InnerText = rdays.Text;
                clientnode.AppendChild(daynode);

                doc.DocumentElement.AppendChild(clientnode);
                doc.Save(Server.MapPath("~/App_Data/client.xml"));
                Response.Write("<script>alert('预订成功！');</script>)");
            }
        }
        catch
        {
            Response.Write("<script>alert('预订失败！');</script>)");
        }
    }
}


