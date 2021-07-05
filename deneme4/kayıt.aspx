<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kayıt.aspx.cs" Inherits="kayıt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 129px;
        }
        .auto-style2 {
            width: 100%;
            background-color: #99CCFF;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style6 {
            width: 583px;
        }
        .auto-style7 {
            height: 26px;
            width: 583px;
            text-align: right;
        }
        .auto-style8 {
            width: 583px;
            text-align: right;
        }
        .auto-style9 {
            font-size: x-large;
            color: #FF6666;
        }
    </style>
</head>
<body style="width: 1270px; height: 333px">
    <form id="form1" runat="server">
        <div style="margin-left:0px; margin-right:0px;" class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9"><strong>Kullanıcı Kaydı</strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Ad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Soyad:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Kullanıcı Adı:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Şifre:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Cinsiyet:</td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Erkek" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Kadın" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Doğum Tarihi:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Yıl-Ay-Gün"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Resim:</td>
                    <td class="auto-style4">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kayıt Ol" Font-Size="15pt" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4"><a href="giriş.aspx">Giriş</a></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
