<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="yazarlar.aspx.cs" Inherits="yazarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            color: #CC3300;
            font-size: x-large;
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
        <strong>&nbsp; Yazarlar</strong></p>
    <p class="auto-style7">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style15">
            <ItemTemplate>
               <a href="yazardetaysayfası.aspx?yazarid=<%#Eval("yazarid") %>"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("yazaradi") %>'></asp:Label>
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("yazarsoyadi") %>'></asp:Label></a>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

