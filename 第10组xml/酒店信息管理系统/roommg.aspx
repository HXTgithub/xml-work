<%@ Page Language="C#" AutoEventWireup="true" CodeFile="roommg.aspx.cs" Inherits="roommg" %>

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
            <div class="content-block" style="width:500px">
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="room" AutoGenerateSelectButton="True" DataKeyNames="房间号" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="房间号" HeaderText="房间号" SortExpression="房间号"></asp:BoundField>
                        <asp:BoundField DataField="房间类型" HeaderText="房间类型" SortExpression="房间类型"></asp:BoundField>
                        <asp:BoundField DataField="床" HeaderText="床" SortExpression="床"></asp:BoundField>
                        <asp:BoundField DataField="销量" HeaderText="销量" SortExpression="销量"></asp:BoundField>
                        <asp:BoundField DataField="人数" HeaderText="人数" SortExpression="人数"></asp:BoundField>
                        <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格"></asp:BoundField>
                        <asp:BoundField DataField="状态" HeaderText="状态" SortExpression="状态"></asp:BoundField>
                        <asp:ImageField DataImageUrlField="图片" AccessibleHeaderText="图片">
                            <ControlStyle Height="100px" Width="160px"></ControlStyle>
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                
                <asp:XmlDataSource runat="server" ID="room" DataFile="~/App_Data/rooms.xml" TransformFile="~/App_Data/hotelmessage.xslt" XPath="/rooms/room"></asp:XmlDataSource>
                <li>
                    <asp:Label ID="lprice" runat="server" Text="价格"></asp:Label>
                    <asp:TextBox ID="price" runat="server"></asp:TextBox>
                </li>       
                <li>
                    <asp:Label ID="lcon" runat="server" Text="状态"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Selected="True">未预订</asp:ListItem>
                    <asp:ListItem>已预订</asp:ListItem>
                    </asp:RadioButtonList>

                </li>
               
                <li>
                    <asp:Button ID="update" runat="server" Text="更改" OnClick="update_Click" />
                </li>
            </div>
            
        </div>
    
        <div id="footer">
            <p>&copy; 2024 安师酒店管理系统. 版权所有.</p>
        </div>
    </form>
</body>
</html>
