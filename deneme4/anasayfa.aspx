<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 340px;
        }
        .auto-style9 {
            width: 271px;
        }
        .auto-style14 {
            width: 100%;
            height: 164px;
        }
        .auto-style15 {
            width: 484px;
        }
        .auto-style16 {
            width: 484px;
            font-size: x-large;
            color: #FF6666;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style16"><strong>Seninle Aynı Kitapları Okuyanlar</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList4" runat="server" Width="220px">
        <ItemTemplate>
           <%--<a href="kullanıcıcprofil.aspx?kullaniciid=<%#Eval("kullaniciid") %>">--%><asp:Label ID="Label6" runat="server" Text='<%# Eval("sayı") %>'></asp:Label>
            &nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("kullaniciadi") %>'></asp:Label><%--</a>--%> 
            &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("kullanicisoyadi") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    &nbsp;
    <br />
    <br />
<br />
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
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
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p>
        <a href="giriş.aspx">Çıkış&nbsp;</a></p>
<p>
    &nbsp;</p>
</asp:Content>


