<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kitapdetay.aspx.cs" Inherits="kitapdetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style15 {
        width: 68px;
    }
        .auto-style16 {
            color: #FF9999;
            font-size: x-large;
        }
        .auto-style17 {
            font-size: large;
            color: #FF9999;
        }
        .auto-style18 {
            background-color: #FFFFFF;
            font-size: x-large;
            color: #FF9999;
        }
        .auto-style20 {
            color: #FF3300;
        }
        .auto-style21 {
            width: 630px;
        }
        .auto-style22 {
            width: 292px;
        }
        .auto-style23 {
            width: 201px;
        }
        .auto-style24 {
            color: #FF9999;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style25 {
            font-size: small;
        }
        .auto-style26 {
            width: 346px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
<asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text="Label"></asp:Label>
    <span class="auto-style20">&nbsp;&nbsp;&nbsp; (Puanı:
    <asp:Label ID="Label13" runat="server"></asp:Label>
&nbsp;)</span></strong><br />
    <strong>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        Yazarı:
        <asp:Label ID="Label6" runat="server" Text='<%# Eval("kitapyazari") %>'></asp:Label>
        &nbsp;
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="136px" Width="118px" ImageUrl='<%# Eval("kitaprsm") %>' />
        <br />
        <br />
        <br />
        Yayınevi:
        <asp:Label ID="Label7" runat="server" Text='<%# Eval("kitapyayinevi") %>'></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Okunma Sayısı:
        <asp:Label ID="Label10" runat="server" Text='<%# Eval("sayı") %>'></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <strong>Tanıtım:
        <asp:Label ID="Label8" runat="server" Text='<%# Eval("kitaptanitim") %>'></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
        <br />
        <div class="auto-style21">
            <table class="auto-style13">
                <tr>
                    <td class="auto-style23">
    <strong>
                        <asp:Button ID="Button4" runat="server" Height="34px" OnClick="Button4_Click" Text="Okudum" Width="81px" />
                        <asp:Label ID="Label11" runat="server"></asp:Label>
</strong>
                    </td>
                    <td class="auto-style15">Puan Ver:</td>
                    <td class="auto-style22">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Puanı Kaydet" />
                        <asp:Label ID="Label18" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td>
    <strong>
            <span class="auto-style17">Yorum:</span></strong></td>
                    <td class="auto-style24">Alıntı:</td>
                </tr>
                <tr>
                    <td>
    <strong>
            <asp:TextBox ID="TextBox4" runat="server" Height="74px" Width="208px" BorderColor="#FF9999" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            <asp:Button ID="Button5" runat="server" Text="Kaydet" OnClick="Button5_Click" />
                        <br />
    <asp:Label ID="Label12" runat="server"></asp:Label>
    </strong>
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="#FF6666" Height="72px" Width="206px"></asp:TextBox>
                        <br />
&nbsp;<span class="auto-style25">Sayfa No:</span><asp:TextBox ID="TextBox6" runat="server" BorderColor="#FF6666" Height="16px" Width="60px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Kaydet" />
                        <br />
                        <asp:Label ID="Label17" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            &nbsp;&nbsp;
</div>

    <br />
    <br />
<span class="auto-style11">
    <br />
    <br />
    <br />
    <span class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </span>
    </span>
    <br />
    <table class="auto-style8">
        <tr>
            <td class="auto-style26">
    <span class="auto-style16">
    <strong>
<span class="auto-style11">
                Yorumlar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    </strong>
                </span></td>
            <td>
    <strong>
<span class="auto-style11">
                <span class="auto-style16">Kitaptan Alıntılar</span></span></strong></td>
        </tr>
        <tr>
            <td class="auto-style26">
    <strong>
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style8">
            <tr>
                <td>
                    Kullanıcı:
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("kullanicinickname") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("inceleme") %>' CssClass="auto-style10"></asp:Label>
                    &nbsp;<br /> </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    </strong>
            </td>
            <td>
                <asp:DataList ID="DataList4" runat="server">
                    <ItemTemplate>
                        Kullanıcı:
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("kullanicinickname") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sayfa:<asp:Label ID="Label16" runat="server" Text='<%# Eval("sayfano") %>'></asp:Label>
                        <br />
                        Alıntı:<asp:Label ID="Label15" runat="server" Text='<%# Eval("cumle") %>'></asp:Label>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </strong>
</asp:Content>

