<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="Yemek_Tarifi.kategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="544px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td>
                    <h3><a href="YemekDetay.aspx?yemekID=<%# Eval("yemekID") %>">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </a></h3>
                </td>
            </tr>
            <tr>
                <td><strong>Malzemeler :</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi :</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi :</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                    <strong>&nbsp;Yemek Puan :</strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
