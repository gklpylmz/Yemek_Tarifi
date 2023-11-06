<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminYemekGuncelle.aspx.cs" Inherits="Yemek_Tarifi.adminYemekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style5 {
        margin-left: 69px;
    }
    .auto-style6 {
        margin-left: 68px;
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
            <td class="auto-style3"><strong>Yemek Ad :</strong></td>
            <td>
                <asp:TextBox ID="txtYemekAd" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Malzemeler :</strong></td>
            <td>
                <asp:TextBox ID="txtYemekMalzeme" runat="server" Height="140px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Tarif :</strong></td>
            <td>
                <asp:TextBox ID="txtYemekTarif" runat="server" Height="300px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Kategori : </strong></td>
            <td>
                <asp:DropDownList ID="txtKategori" runat="server" Width="306px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="48px" OnClick="Button1_Click" Text="Güncelle" Width="164px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="48px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="165px" />
            </td>
        </tr>
    </table>
</asp:Content>
