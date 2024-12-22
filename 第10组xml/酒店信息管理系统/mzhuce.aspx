﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mzhuce.aspx.cs" Inherits="mzhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="zhuce.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 105px;
        }
        #Text1 {
            width: 205px;
        }
        .auto-style3 {
            width: 168px;
        }
        #Text2 {
            width: 204px;
        }
        #Select2 {
            width: 211px;
        }
        #Radio1 {
            width: 18px;
        }
        #Text4 {
            width: 205px;
        }
        #Text5 {
            width: 204px;
        }
        #Text6 {
            width: 204px;
        }
        #Text3 {
            width: 201px;
        }
        .auto-style4 {
            width: 105px;
            height: 22px;
        }
        .auto-style5 {
            width: 168px;
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            width: 105px;
            height: 23px;
        }
        .auto-style8 {
            width: 168px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 105px;
            height: 25px;
        }
        .auto-style11 {
            width: 168px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 104px;
            height: 22px;
        }
        .auto-style14 {
            width: 104px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="header">
        </div>
  <h1 style="color: #FFFFFF; width: 1069px; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: 100px; padding-left: 534px;">安师酒店欢迎您</h1>
<div style="clear: both;">&nbsp;</div>
<div id="content">
  <div><img src="images/img5.jpg" alt="" />
   <div class="templatemo_link"><ul>
	 <li><a href="zhuce.aspx">客户注册</a></li>
     <li><a href="denglu.aspx">客户登录</a></li>
       <li><a href="mdenglu.aspx">返回登录</a></li>
    </ul> 
</div>
      <table class="auto-style1">
      <tr>
          <td class="auto-style7">必填项：</td>
          <td class="auto-style8">
          </td>
          <td class="auto-style9"></td>
      </tr>
      <tr>
          <td class="auto-style7">用户名：</td>
          <td class="auto-style8">
              <asp:TextBox ID="Txtmname" runat="server" OnTextChanged="Txtusername_TextChanged" AutoPostBack="True"></asp:TextBox>
          </td>
          <td class="auto-style9">
              <asp:Label ID="lblts1" runat="server" Text="*用户名长度应在3~30之间" ForeColor="Red"></asp:Label></td>
      </tr>
      <tr>
          <td class="auto-style2">密码：</td>
          <td class="auto-style3">
              <asp:TextBox ID="Txtmpassword" runat="server" TextMode="Password"></asp:TextBox>
          </td>
          <td>&nbsp;<asp:Label runat="server" Text="*密码长度至少为6位" ForeColor="Red"></asp:Label></td>
      </tr>
      <tr>
          <td class="auto-style2">确认密码：</td>
          <td class="auto-style3">
              <asp:TextBox ID="Txtmcpassword" runat="server" TextMode="Password"></asp:TextBox>
          </td>
          <td>&nbsp;</td>
      </tr>

      <tr>
          <td class="auto-style4">性别：</td>
          <td class="auto-style5">
              <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="77px">
                  <asp:ListItem Selected="True">男</asp:ListItem>
                  <asp:ListItem>女</asp:ListItem>
              </asp:RadioButtonList>
              </td>

          <td class="auto-style6"></td>
      </tr>
      
      <tr>
          <td class="auto-style2">电话：</td>
          <td class="auto-style3">
              <asp:TextBox ID="Txtmtel" runat="server"></asp:TextBox>
          </td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td class="auto-style2">管理员密匙：</td>
          <td class="auto-style3">
             <asp:TextBox ID="key" runat="server"></asp:TextBox>
          </td>
             <td>&nbsp;</td>
      </tr>
      <tr>
          <td class="auto-style13"></td>
          <td class="auto-style6">
              <asp:Button ID="Button1" runat="server" Text="注册" Width="105px" OnClick="Button1_Click" />
          </td>
          <td class="auto-style6"></td>
      </tr>
      </table>
    </div>
</div>
    </form>
<div id="footer">
  <p>Copyright &copy; 2046 Sitename.com. Designed by <a href="http://www.cssk8.com"><strong>cssk8.com</strong></a></p>
</div>

</body>
</html>
