using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class roommg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label11.Text = "管理员：" + Session["uname"].ToString();
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/rooms.xml"));
        XmlNode node = doc.SelectSingleNode("/rooms/room[@roomid='" + GridView1.SelectedValue.ToString() + "']");
        XmlElement rprice = (XmlElement)node.SelectSingleNode("price");
        XmlElement rcondition = (XmlElement)node.SelectSingleNode("condition");
        price.Text = rprice.InnerText;
        
    }

    protected void update_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/App_Data/rooms.xml"));
        XmlNode node = doc.SelectSingleNode("/rooms/room[@roomid='" + GridView1.SelectedValue.ToString() + "']");
        if (node == null)
        {
            Response.Write("<script>alert('未找到该房间，请确定房间号是否正确');</script>)");
        }
        else
        {
            XmlElement roomprice = (XmlElement)node.SelectSingleNode("price");
            roomprice.InnerText = price.Text;
            XmlElement roomcondition = (XmlElement)node.SelectSingleNode("condition");
            roomcondition.InnerText = RadioButtonList1.SelectedValue.ToString();
            doc.Save(Server.MapPath("~/App_Data/rooms.xml"));
            Response.Write("<script>alert('修改房间信息成功');location.href='roommg.aspx'</script>)");
        }
    }
}