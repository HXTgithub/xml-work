<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuye.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="zhuye.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>酒店管理系统 - 主页</title>
</head>
<body>
    <form id="form1" runat="server">
      
        <div id="header">
            <h1>安师酒店</h1>
            <p>享受家的温馨，体验极致的服务</p>
        </div>

     
        <div id="navbar">
            <ul>
                <li><a href="zhuye.aspx">主页</a></li>
                
                <li><a href="jiudianxinxi.aspx">酒店预定</a></li>
                <li><a href="pinglun_cjz.aspx">用户评论</a></li>
                
                <li><a href="denglu.aspx">退出登录</a></li>
                <li>
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White"></asp:Label></li>
            </ul>
        </div>

     
        <div id="hero">
            <h2>奢华与舒适的完美结合</h2>
            <p>无论是商务旅行还是家庭度假，我们都为您提供卓越的服务。</p>
            <a href="jiudianxinxi.aspx" class="btn">了解更多</a>
        </div>

      
        <div id="content">
            <div class="content-block">
                <h3>精选酒店</h3>
                <p>我们精心挑选了世界各地的优质酒店，确保每一次旅行都完美无缺。</p>
            </div>
            <div class="content-block">
                <h3>会员服务</h3>
                <p>成为我们的会员，享受独家优惠和会员特权。</p>
            </div>
            <div class="content-block">
                <h3>客户评论</h3>
                <p>查看真实客户的反馈，让您对我们的服务充满信心。</p>
            </div>
        </div>

       
        <div id="footer">
            <p>&copy; 2024 安师酒店管理系统. 版权所有.</p>
        </div>
    </form>
</body>
</html>
