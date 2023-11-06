<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="kategoriAdminGuncelle.aspx.cs" Inherits="Yemek_Tarifi.kategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Kategori Adı :</td>
            <td>
                <asp:TextBox ID="txtKategoriAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori Adet :</td>
            <td>
                <asp:TextBox ID="txtKategoriAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori Resmi :</td>
            <td>
                <asp:FileUpload ID="flupKategoriResmi" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="55px" OnClick="Button1_Click" Text="Güncelle" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>
