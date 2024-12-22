<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shangc.aspx.cs" Inherits="shangc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            padding: 0px;
            margin: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding: 0px; margin: 0px; height: 380px; background-color: #F3F3F3;">
    <table class="style4">
                                        <tr>
                                            <td class="style5">
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <asp:Label ID="lblsc" runat="server" ForeColor="#FF3300"></asp:Label>
                                            </td>
                                            <td rowspan="2">
                                                <asp:Image ID="Image1" runat="server" Height="161px" ImageUrl="~/photo/示例.jpg" 
                                                    Width="117px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style5">
                                                <asp:Button ID="Button3" runat="server" Text="开始上传" BorderColor="#009900" 
                                                    BorderStyle="Outset" BorderWidth="2px" CausesValidation="False" 
                                                    onclick="Button3_Click" />
                                            </td>
                                        </tr>
                                    </table>
        <asp:FileUpload ID="FileUpload2" runat="server" />
    </div>
    </form>
</body>
</html>
