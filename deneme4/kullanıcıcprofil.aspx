<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kullanıcıcprofil.aspx.cs" Inherits="kullanıcıcprofil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style14 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="auto-style8">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>Kullanıcı Bilgileri</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:DataList ID="DataList8" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("kullanicirsm") %>' Width="90px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Ad:</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Soyad:</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Okuduğu kitaplar:</td>
            <td>
                <br />
                --------------------------------------------------------------------------------------<asp:DataList ID="DataList4" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("kitapadi") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Verdiği puanlar:</td>
            <td>--------------------------------------------------------------------------------------<br />
                <asp:DataList ID="DataList5" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("kitapadi") %>'></asp:Label>
                        &nbsp;&nbsp; Puanı:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("puan") %>'></asp:Label>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Yaptığı incelemeler:</td>
            <td>--------------------------------------------------------------------------------------<br />
                <asp:DataList ID="DataList6" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("kitapadi") %>'></asp:Label>
                        -<asp:Label ID="Label10" runat="server" Text='<%# Eval("inceleme") %>'></asp:Label>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Yaptığı Alıntılar:</td>
            <td class="auto-style14">--------------------------------------------------------------------------------------<br />
                <asp:DataList ID="DataList7" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("kitapadi") %>'></asp:Label>
                        - Sayfa:<asp:Label ID="Label12" runat="server" Text='<%# Eval("sayfano") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("cumle") %>'></asp:Label>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                --------------------------------------------------------------------------------------<br />
                <asp:Button ID="Button4" runat="server" Text="Mesaj Gönder" OnClick="Button4_Click" />
            </td>
        </tr>
    </table>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

