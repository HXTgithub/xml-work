using System;
using System.Web.UI;
using System.Xml;
using System.IO;

public partial class _Default : Page
{
    // XML �ļ�·��
    private string xmlFilePath;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "�û���" + Session["uname"].ToString();
    }

    // �ύ���۰�ť�¼�
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string commentText = Request.Form["comment"];
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/App_Data/comments.xml"));
            XmlElement commentnode = doc.CreateElement("Comment");
            XmlElement namenode = doc.CreateElement("User");
            namenode.InnerText = Session["uname"].ToString();
            commentnode.AppendChild(namenode);
            XmlElement cnode = doc.CreateElement("Text");
            cnode.InnerText = commentText;
            commentnode.AppendChild(cnode);
            XmlElement tnode = doc.CreateElement("Time");
            tnode.InnerText = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            commentnode.AppendChild(tnode);
            doc.DocumentElement.AppendChild(commentnode);
            doc.Save(Server.MapPath("~/App_Data/comments.xml"));
            Response.Write("<script>alert('���ϴ�����');</script>)");
            Response.Redirect("pinglun_cjz.aspx");
        }
        catch
        {
            Response.Write("<script>alert('�ϴ�����ʧ��');</script>)");
        }
    }
}
