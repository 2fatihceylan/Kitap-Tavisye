<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kullanıcılar.aspx.cs" Inherits="kullanıcılar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            color: #CC3300;
            font-size: xx-large;
        }
        .auto-style14 {
            color: #CC3300;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style14">
        <strong>&nbsp; Kullanıcılar</strong></p>
    <p class="auto-style7">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
               <a href="kullanıcıcprofil.aspx?kullaniciid=<%#Eval("kullaniciid") %>"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("kullaniciadi") %>' CssClass="auto-style15"></asp:Label>
                &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("kullanicisoyadi") %>' CssClass="auto-style15"></asp:Label></a>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

