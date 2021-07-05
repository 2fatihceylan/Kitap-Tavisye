<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kitaplar.aspx.cs" Inherits="kitaplar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style12 {
        font-size: large;
        color: #CC3300;
    }
        .auto-style10 {
        color: #CC3300;
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
        .auto-style13 {
        color: #FF0000;
    }
        .auto-style14 {
            width: 51%;
        }
        .auto-style15 {
            width: 224px;
            font-size: xx-small;
        }
        .auto-style16 {
            font-size: medium;
        }
        .auto-style17 {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="auto-style10"><strong>&nbsp;&nbsp; Kitap Adı&nbsp;&nbsp;&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style12">Yazarı&nbsp;&nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DataList ID="DataList1" runat="server" Width="732px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style14">
                        <br />
                        &nbsp;<a href="kitapdetay.aspx?kitapid=<%#Eval("kitapid") %>"><asp:Label ID="Label2" runat="server" Text='<%# Eval("kitapadi") %>' CssClass="auto-style17"></asp:Label>
                        </a><%--kitapisimlerini tutan labela kitapdetay sayfası linki ekledik--%></td>
                    <td class="auto-style15">
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("kitapyazari") %>' CssClass="auto-style16"></asp:Label>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

