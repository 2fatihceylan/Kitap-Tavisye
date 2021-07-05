<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletişim.aspx.cs" Inherits="iletişim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            font-size: x-large;
            color: #FF6666;
        }
        .auto-style17 {
            width: 109px;
            text-align: right;
        }
        .auto-style18 {
            text-align: center;
            color: #FF5050;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <div class="auto-style14">
            <strong><span class="auto-style15">Mesaj Gönder</span></strong><br />
        </div>
        <table class="auto-style8">
            <tr>
                <td class="auto-style17">Konu:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="#FF6666" Width="482px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Mesaj:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="#FF6666" Height="114px" Width="482px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Gönder" Width="96px" />
                </td>
            </tr>
        </table>
    <p class="auto-style18">
        <strong>Gönderdiğin Eski Mesajlar</strong></p>
    <p>
    &nbsp;&nbsp;
        <asp:DataList ID="DataList4" runat="server" Width="655px">
            <ItemTemplate>
                Kime:&nbsp;
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("kullaniciadi") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesaj:&nbsp;
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("mesaj") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarih:<asp:Label ID="Label9" runat="server" Text='<%# Eval("tarih") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
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

