<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pinglun_cjz.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="pinglun_cjz.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>酒店管理系统 - 用户评论</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div id="header">
            <h1>安师酒店</h1>
            <p>用户评论 - 分享您的真实体验</p>
        </div>

    
        <div id="navbar">
            <ul>
                <li><a href="zhuye.aspx">主页</a></li>

                <li><a href="jiudianxinxi.aspx">酒店预定</a></li>
                <li><a href="pinglun_cjz.aspx" class="active">用户评论</a></li>

                <li><a href="denglu.aspx">退出登录</a></li>
                <li>
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White"></asp:Label></li>
            </ul>
        </div>

       
        <div id="comments-section">
            <h2>用户评论</h2>
            <div id="comments-container">
                
                <div>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1">
                        <ItemTemplate>
                            评论:
                            <asp:Label Text='<%# Eval("评论") %>' runat="server" ID="评论Label" /><br />
                            用户名:
                            <asp:Label Text='<%# Eval("用户名") %>' runat="server" ID="用户名Label" /><br />
                            评论时间:
                            <asp:Label Text='<%# Eval("评论时间") %>' runat="server" ID="评论时间Label" /><br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList><asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/comments.xml" TransformFile="~/App_Data/comment.xslt" XPath="/Comments/Comment"></asp:XmlDataSource>
                </div>
               
            </div>

           
            <div id="add-comment">
                <h3>添加您的评论</h3>
                <textarea id="comment-box" rows="4" cols="50" placeholder="写下您的评论..." name="comment" ></textarea>
                <br />
                
            </div>
            <asp:Button ID="Button1" runat="server" Text="上传评论" OnClick="Button1_Click" />
        </div>

     
        <div id="footer">
            <p>&copy; 2024 安师酒店管理系统. 版权所有.</p>
        </div>
    </form>
</body>
</html>
