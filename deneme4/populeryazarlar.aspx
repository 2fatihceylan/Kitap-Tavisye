<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="populeryazarlar.aspx.cs" Inherits="populeryazarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong><span class="auto-style14">&nbsp;Yazarlar</span></strong><br />
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
           
            &nbsp;&nbsp;
           
         <a href="yazardetaysayfası.aspx?yazarid=<%#Eval("yazarid") %>"> <asp:Label ID="Label5" runat="server" Text='<%# Eval("kitapyazari") %>' style="font-size: x-large"></asp:Label></a>
        
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

