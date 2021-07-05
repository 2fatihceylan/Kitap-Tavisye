<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="populerkitaplar.aspx.cs" Inherits="populerkitaplar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style21 {
        width: 354px;
    }
        .auto-style28 {
            width: 55%;
        }
        .auto-style27 {
        width: 80px;
        font-size: xx-small;
    }
        .auto-style19 {
        text-align: right;
            width: 225px;
        }
    .auto-style23 {
        color: #FF0000;
        font-size: medium;
    }
        .auto-style16 {
        width: 100%;
    }
        .auto-style29 {
            font-size: x-large;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;&nbsp;&nbsp; <strong><span class="auto-style29">Kitap Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Okunma Sayısı</span></strong><br />
</p>
<table class="auto-style16">
    <tr>
        <td class="auto-style21"><asp:DataList ID="DataList1" runat="server" Width="554px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style28">
                        <br />
                       
                        &nbsp;&nbsp;
                       
              <a href="kitapdetay.aspx?kitapid=<%#Eval("kitapid") %>"><asp:Label ID="Label2" runat="server" Text='<%# Eval("kitapadi") %>' style="font-size: x-large"></asp:Label></a> 
                    
                    
                    
                    </td>
                    <td class="auto-style27">
                        <br />

                        </td>
                    <td class="auto-style19">
                        <br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("sayı") %>' CssClass="auto-style23"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </td>
    </tr>
</table>
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
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

