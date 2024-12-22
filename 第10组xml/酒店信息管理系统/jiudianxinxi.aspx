<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiudianxinxi.aspx.cs" Inherits="jiudianxinxi" %>

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

                <li><a href="jiudianxinxi.aspx" class="active">酒店预定</a></li>
                <li><a href="pinglun_cjz.aspx" >用户评论</a></li>

                <li><a href="denglu.aspx">退出登录</a></li>
                <li>
                    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White"></asp:Label></li>
            </ul>
        </div>

      
        <div id="hero" style="height:10px">
            <p style="color:black;font-size:65px">酒店信息</p>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Black"></asp:Label>
            
        </div>

     
        <div id="content">
            <div class="content-block" style="width:700px">
                <asp:GridView ID="roomView" runat="server" AutoGenerateColumns="False" CellPadding="20" AutoGenerateSelectButton="True" OnSelectedIndexChanged="roomView_SelectedIndexChanged" DataSourceID="room" DataKeyNames="房间号" AllowPaging="True" PageSize="3">
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
                <li><asp:Label ID="Label3" runat="server" Text="入住日期"></asp:Label>
                </li>
                <asp:TextBox ID="rdate" runat="server" TextMode="Date"></asp:TextBox>
                <li>
                    <asp:Label ID="Label4" runat="server" Text="入住天数"></asp:Label>
                </li>
                <asp:TextBox ID="rdays" runat="server"></asp:TextBox>
            </div>
            
        </div>

        <div id="content">
            
            <asp:Button ID="reserve" runat="server" Text="预订" Height="40px" Width="90px" OnClick="reserve_Click" />
        </div>
       
        <div id="footer">
            <p>&copy; 2024 安师酒店管理系统. 版权所有.</p>
        </div>
    </form>
</body>
</html>
