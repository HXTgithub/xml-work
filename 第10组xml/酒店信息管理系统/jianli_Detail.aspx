<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jianli_Detail.aspx.cs" Inherits="jianli_Detail" %>

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
          
                <li><a href="mzhuye.aspx">用户信息</a></li>
                <li><a href="jianli.aspx">员工信息</a></li>
                <li><a href="roommg.aspx">房间信息</a></li>
                <li><a href="denglu.aspx">退出登录</a></li>
               
            </ul>
        </div>

     
        <div id="content">
            <div class="content-block" style="width:800px">
                <asp:Xml ID="Xml1" runat="server" DocumentSource="~/App_Data/个人简历.xml" TransformSource="~/App_Data/jianlidetail.xsl"></asp:Xml>
            </div>
            
        </div>
      
        <div id="footer">
            <p>&copy; 2024 安师酒店管理系统. 版权所有.</p>
        </div>
    </form>
</body>
</html>
