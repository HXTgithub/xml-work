<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mdenglu.aspx.cs" Inherits="mdenglu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="denglu.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 116px;
            width: 430px;
        }
        .auto-style3 {
            width: 176px;
        }
        .auto-style4 {
            height: 45px;
            width: 176px;
        }
        .auto-style5 {
            width: 71px;
        }
        .auto-style6 {
            height: 45px;
            width: 63px;
        }
        .auto-style7 {
            height: 45px;
            width: 71px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        </div>
  <h1 style="color: #FFFFFF; width: 1069px; border-top-style: none; border-right-style: none; border-bottom-style: none;  padding-left: 534px;">安师酒店欢迎您</h1>

<div style="clear: both;">&nbsp;</div>
<div id="content">
  <div><img src="images/img5.jpg" alt="" />
   <div class="templatemo_link"><ul>
	 <li><a href="zhuce.aspx">客户注册</a></li>
	 <li><a href="denglu.aspx">客户登录</a></li>
       <li><a href="mzhuce.aspx">管理员注册</a></li>
    </ul> 
</div>
      <table class="auto-style1">
      <tr>
          <td class="auto-style5">请登录...</td>
          <td class="auto-style3">
          </td>
          <td class="auto-style9">
              
          </td>
      </tr>
      <tr>
          <td class="auto-style7">用户名：</td>
          <td class="auto-style4">
              <asp:TextBox ID="Txtmzh" runat="server" Height="25px" Width="195px" ForeColor="#999999" onfocus="this.value='';this.style.color='#000000'" AutoPostBack="True">用户名/电话号</asp:TextBox>
          </td>
      </tr>
      <tr>
          <td class="auto-style7">密码：</td>
          <td class="auto-style3">
              <asp:TextBox ID="Txtmmima" runat="server" Height="23px" Width="197px" TextMode="Password"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td class="auto-style7">验证码：</td>
          <td class="auto-style3">
              <asp:TextBox ID="Txtyzm" runat="server" Height="23px" Width="197px"></asp:TextBox>
          </td>
          <td class="auto-style6">
              <img alt="" src="CheckCode.aspx" onclick="src=src+'?'" style="cursor:pointer" /></td>
      </tr>
      <tr>
          <td class="auto-style7"><a href="mzhuce.aspx">新用户注册</a></td>
          <td class="auto-style3">
              <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
          </td>
          <td class="auto-style6">
              <asp:CheckBox ID="CheckBox1" runat="server" Text="请记住我" />
          </td>
      </tr>
          <tr>
          <td class="auto-style7">&nbsp;</td>
          <td class="auto-style3">
              &nbsp;</td>
      </tr>
      </table>
    </div>
    <div>

    </div>
</div>
    </form>
</body>
</html>
