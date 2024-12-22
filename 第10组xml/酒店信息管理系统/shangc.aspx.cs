using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class shangc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
          if (FileUpload1.PostedFile.FileName == null)
            {
                lblsc.Text = "请选择你上传的头像！";
            }
            else
            {
                if (FileUpload1.PostedFile.ContentLength > 307200)
                {
                    lblsc.Text = "上传的头像不能超过300KB";
                }
                else
                {
                    string ex = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    switch (ex.ToLower())
                    {
                        case ".jpg":
                        case ".jpeg":
                        case ".png":
                        case ".bmp":
                            break;
                        default:
                            lblsc.Text = "上传的头像应为|*.jpg|*.bmp|*.png";
                            return;
                    }
                    string filename = FileUpload1.FileName;
                    //string filename = Session["username"].ToString() + ex;
                    string savepath = Server.MapPath("~/photo/") + filename;
                    FileUpload1.PostedFile.SaveAs(savepath);
                    lblsc.Text = "上传成功！";
                    string dbpath = "~/photo/" + filename;
                    Image1.ImageUrl = dbpath;
                    Session["photo"] = dbpath;
                }
            }
        }
        catch
        {
            lblsc.Text = "文件上传时出错！";
        }
    }
}