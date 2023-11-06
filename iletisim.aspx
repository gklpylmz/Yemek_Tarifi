<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-right: 0px;
    }
    .auto-style3 {
        height: 29px;
        text-align: right;
        width: 229px;
    }
    .auto-style4 {
        height: 29px;
        text-align: left;
        width: 327px;
        margin-left: 40px;
    }
    .auto-style5 {
        text-align: right;
        width: 229px;
    }
    .auto-style6 {
        width: 327px;
        margin-left: 40px;
    }
    .auto-style7 {
        text-align: left;
        width: 327px;
    }
    .auto-style8 {
        text-align: center;
        font-size: 20pt;
    }
    .auto-style10 {
        width: 327px;
    }
    .auto-style11 {
        width: 229px;
    }
    .auto-style12 {
        text-align: left;
        width: 327px;
        margin-left: 40px;
    }
    .auto-style13 {
        margin-left: 18px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style8" colspan="2"><strong>Mesaj Paneli </strong></td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad :</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="txtAdSoyad" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adresi :</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="txtMail" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Konu :</strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="txtKonu" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mesaj :</strong></td>
        <td class="auto-style12">
            <asp:TextBox ID="txtMesaj" runat="server" Height="161px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="42px" OnClick="Button1_Click" Text="Gönder" Width="169px" />
        </td>
    </tr>
</table>
</asp:Content>
