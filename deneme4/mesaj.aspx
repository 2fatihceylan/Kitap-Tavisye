<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mesaj.aspx.cs" Inherits="mesaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            font-size: x-large;
            color: #FF6666;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            color: #FF3300;
        }
        .auto-style26 {
            color: #666699;
        }
        .auto-style27 {
            color: #CC0000;
        }
        .auto-style28 {
            color: #000000;
        }
        .auto-style29 {
            width: 147px;
        }
        .auto-style30 {
            width: 147px;
            text-align: right;
        }
        .auto-style36 {
            width: 113px;
        }
        .auto-style37 {
            width: 113px;
            text-align: left;
        }
        .auto-style38 {
            font-size: small;
            color: #000000;
        }
        .auto-style40 {
            width: 147px;
            text-align: right;
            color: #FF6666;
            font-size: x-large;
        }
        .auto-style44 {
            width: 95px;
        }
        .auto-style45 {
            width: 63px;
        }
        .auto-style46 {
            width: 99px;
        }
        .auto-style47 {
            font-size: x-large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style23">
        <strong><span class="auto-style15">Gelen Mesajlar</span></strong><br />
    </p>
    <p class="auto-style24">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp; No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarih&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kimden&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Konu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesaj&nbsp; </strong>
        <asp:DataList ID="DataList4" runat="server">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style44">
                            &nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Eval("gonderenid") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style45">
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style26" Text='<%# Eval("tarih") %>'></asp:Label>
                        </td>
                        <td class="auto-style46">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("kullanicinickname") %>'></asp:Label>
                        </td>
                        <td class="auto-style37">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style27" Text='<%# Eval("baslik") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style28" Text='<%# Eval("mesaj") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44">&nbsp;</td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style46">&nbsp;</td>
                        <td class="auto-style36">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style47">-------------------------------------------------------------------------------------</span><span class="auto-style15"><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesaj Gönder&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table class="auto-style8">
        <tr>
            <td class="auto-style30">No:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" BorderColor="#FF6666" Width="56px"></asp:TextBox>
&nbsp;</span><span class="auto-style38">Mesajını cevaplamak istediğiniz kişinin no&#39;sunu girin.</td>
        </tr>
        
        <span class="auto-style15">
        <tr>
            <td class="auto-style40">Konu:</td>
            <td>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="#FF6666" Width="482px" Height="29px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style40">Mesaj:</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="#FF6666" Height="114px" Width="482px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Gönder" Font-Size="15pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

