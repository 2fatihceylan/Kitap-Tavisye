<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="yazardetaysayfası.aspx.cs" Inherits="yazardetaysayfası" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style14 {
            color: #FF6666;
            font-size: x-large;
        }
        .auto-style15 {
            font-size: xx-large;
            width: 192px;
        }
        .auto-style16 {
            background-color: #FFFFFF;
            color: #FF6666;
        }
        .auto-style17 {
            color: #FF6666;
        }
        .auto-style18 {
            width: 215px;
        }
        .auto-style19 {
            width: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
    &nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style8">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">
    <strong>
    <asp:DataList ID="DataList4" runat="server">
        <ItemTemplate>
            <span class="auto-style16">Doğum Tarihi</span><span class="auto-style17">:</span> <asp:Label ID="Label7" runat="server" Text='<%# Eval("yazardogumtarihi") %>'></asp:Label>
            <br />
            ------------------------------------------<br />
            <span class="auto-style17">Doğum Yeri:&nbsp;&nbsp;&nbsp; </span><asp:Label ID="Label8" runat="server" Text='<%# Eval("yazardogumyeri") %>'></asp:Label>
            <br />
            ------------------------------------------<br />
            <span class="auto-style17">Ölüm Tarihi:&nbsp;&nbsp;&nbsp; </span><asp:Label ID="Label9" runat="server" Text='<%# Eval("yazarolumtarihi") %>'></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">
    <strong>
                <span class="auto-style14">Yazarın Kitapları:</span></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">
    <strong>
    <asp:DataList ID="DataList5" runat="server">
        <ItemTemplate>
            <a href="kitapdetay.aspx?kitapid=<%#Eval("kitapid") %>"><asp:Label ID="Label11" runat="server" Text='<%# Eval("kitapadi") %>'></asp:Label></a>
            <br />
            ------------------------------------------
        </ItemTemplate>
    </asp:DataList>
    </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <div class="auto-style13">
&nbsp;
    </div>
    <br />
    &nbsp;
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

