<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="yuksekpuanlıkitaplar.aspx.cs" Inherits="yuksekpuanlıkitaplar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
        margin-left: 4px;
    }
    .auto-style22 {
        width: 51%;
    }
    .auto-style19 {
        text-align: right;
            width: 322px;
        }
    .auto-style23 {
        color: #FF0000;
        font-size: medium;
    }
        .auto-style25 {
            font-size: x-large;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;&nbsp; <strong><span class="auto-style25">&nbsp;Kitap Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Puanı</span></strong><br />
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style20" Width="576px" Height="185px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style22">
                        &nbsp;&nbsp;
                    
                    
                    
                      <a href="kitapdetay.aspx?kitapid=<%#Eval("kitapid") %>"> <asp:Label ID="Label6" runat="server" Text='<%# Eval("kitapadi") %>' style="font-size: x-large"></asp:Label></a>
                    
                    
                    
                    </td>
                    <td class="auto-style9">
                        <br />
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style23" Text='<%# Eval("ort") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
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
<p>
</p>
</asp:Content>

