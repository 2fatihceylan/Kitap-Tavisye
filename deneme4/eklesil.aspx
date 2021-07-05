<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="eklesil.aspx.cs" Inherits="eklesil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 600px;
            height: 30px;
            text-align: right;
        }
        .auto-style13 {
            height: 30px;
            width: 2011px;
            text-align: right;
        }
        .auto-style14 {
            height: 30px;
            width: 8474px;
        }
        .auto-style15 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Kitap Ekle<br />
    <table class="auto-style15">
        <tr>
            <td>Kitap Adı:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kitap Yazarı:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kitap Yayınevi:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kitap Tanıtım:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kitap Resmi:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    Kitap Sil/Düzenle<br />
<br />
    <asp:DataList ID="DataList1" runat="server" Width="715px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("kitapadi") %>'></asp:Label>
                </td>
                <td class="auto-style13">
                 <a href="eklesil.aspx?kitapid=<%#Eval("kitapid")%>&islem=sil" >   <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/resim/delete.png" Width="20px" /></a>
                </td>
                <td class="auto-style11">
                  <a href="kitapdüzenle.aspx?kitapid=<%#Eval("kitapid") %>">   <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/resim/update.png" Width="20px" /></a>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

