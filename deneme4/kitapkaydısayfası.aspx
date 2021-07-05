<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kitapkaydısayfası.aspx.cs" Inherits="kitapkaydısayfası" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Kitaba bir yorum yapın:</p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" BorderColor="#FF6600" Height="58px" Width="322px"></asp:TextBox>
    </p>
    <p>
        Kitaptan alıntı:</p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" BorderColor="#CC3300" Height="53px" Width="321px"></asp:TextBox>
    </p>
    <p>
        Kitaba puanınız:<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="127px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button4" runat="server" Height="28px" OnClick="Button4_Click" Text="Tamam" Width="75px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

