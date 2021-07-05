<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giriş.aspx.cs" Inherits="giriş" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 257px;
            background-color: #99CCFF;
        }
        .auto-style2 {
            width: 100%;
            background-color: #99CCFF;
            height: 227px;
        }
        .auto-style4 {
            width: 403px;
        }
        .auto-style5 {
            width: 358px;
        }
        .auto-style7 {
            width: 403px;
            font-size: x-large;
            color: #FF6666;
        }
        .auto-style8 {
            text-align: right;
            width: 358px;
            font-size: large;
        }
        .auto-style9 {
            text-align: left;
            width: 358px;
            font-size: large;
        }
        .auto-style10 {
            font-size: small;
        }
    </style>
</head>
<body style="width: 1200px; height: 376px">
    <form id="form1" runat="server">
        <div style="margin-left:0px; margin-right:0px;" class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7"><strong>Kullanıcı Giriş</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <h1 class="auto-style10">Kullanıcı Adı</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <h1 class="auto-style10">Şifre</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="170px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" Width="102px" Font-Size="Medium" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4"><a href="kayıt.aspx">Kayıt Ol</a></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
