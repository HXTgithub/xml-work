<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mzhuye.aspx.cs" Inherits="mzhuye" %>

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
                <li>
                    <asp:Label ID="Label11" runat="server" Text="Label" ForeColor="White"></asp:Label></li>
                
            </ul>
        </div>

       
        <div id="content">
            <div class="content-block" style="width:300px">
                <asp:GridView ID="clientg" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="true" AllowPaging="True" CellSpacing="50" DataSourceID="client" DataKeyNames="预订房间号" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="客户名" HeaderText="客户名" SortExpression="客户名"></asp:BoundField>
                        <asp:BoundField DataField="预订房间号" HeaderText="预订房间号" SortExpression="预订房间号"></asp:BoundField>
                        <asp:BoundField DataField="客户电话" HeaderText="客户电话" SortExpression="客户电话"></asp:BoundField>
                        <asp:BoundField DataField="住房日期" HeaderText="住房日期" SortExpression="住房日期"></asp:BoundField>
                        <asp:BoundField DataField="住房天数" HeaderText="住房天数" SortExpression="住房天数"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:XmlDataSource runat="server" ID="client" DataFile="~/App_Data/client.xml" TransformFile="~/App_Data/client.xslt" XPath="/clients/client"></asp:XmlDataSource>
                <a>
                    <li><asp:Label ID="Label2" runat="server" Text="客户名："></asp:Label>
                    <asp:TextBox ID="Txtcn" runat="server"></asp:TextBox></li>
                </a>
                <a>
                    <li><asp:Label ID="Label3" runat="server" Text="房间号："></asp:Label>
                    <asp:TextBox ID="Txtcr" runat="server"></asp:TextBox></li>
                </a>
                <a>
                    <li><asp:Label ID="Label4" runat="server" Text="电话号："></asp:Label>
                    <asp:TextBox ID="Txtcp" runat="server"></asp:TextBox></li>
                </a>
                <a>
                    <li>
                        <asp:Label ID="Label5" runat="server" Text="入住日期"></asp:Label>
                        <asp:TextBox ID="Txtdate" runat="server" TextMode="Date"></asp:TextBox>
                    </li>
                </a>
                <a>
                    <li><asp:Label ID="Label1" runat="server" Text="天数："></asp:Label>
                    <asp:TextBox ID="Txtt" runat="server"></asp:TextBox></li>
                </a>
                
                <a>
                    <asp:Button ID="update" runat="server" Text="更改" OnClick="update_Click" />
                    <asp:Button ID="dlt" runat="server" Text="删除" OnClick="dlt_Click" />
                </a>

            </div>
            
        </div>
        <div id="content">
            <div class="content-block" style="width:800px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="user" PageSize="5" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名"></asp:BoundField>
                        <asp:BoundField DataField="用户密码" HeaderText="用户密码" SortExpression="用户密码"></asp:BoundField>
                        <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别"></asp:BoundField>
                        <asp:BoundField DataField="密保问题" HeaderText="密保问题" SortExpression="密保问题"></asp:BoundField>
                        <asp:BoundField DataField="密保答案" HeaderText="密保答案" SortExpression="密保答案"></asp:BoundField>
                        <asp:BoundField DataField="电话" HeaderText="电话" SortExpression="电话"></asp:BoundField>
                        <asp:BoundField DataField="邮箱" HeaderText="邮箱" SortExpression="邮箱"></asp:BoundField>
                        <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日"></asp:BoundField>
                        <asp:ImageField DataImageUrlField="头像" AccessibleHeaderText="头像">
                            <ControlStyle Height="50px" Width="80px"></ControlStyle>
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                <asp:XmlDataSource runat="server" ID="user" DataFile="~/App_Data/userdata.xml" TransformFile="~/user.xslt" XPath="/users/user"></asp:XmlDataSource>
            </div>
        </div>
    
        <div id="footer">
            <p>&copy; 2024 安师酒店管理系统. 版权所有.</p>
        </div>
    </form>
</body>
</html>
