<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style13 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style14 {
            margin-left: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Tarif Adı :</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTarifAd" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Malzemeler :</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTarifMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Yapılış :</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTarifYapilis" runat="server" Height="371px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Resim :</strong></td>
            <td class="auto-style13">
                <asp:FileUpload ID="flupResim" runat="server" Height="35px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Tarif Sahibi :</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTarifSahibi" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail Adresi :</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtMailAdresi" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="btnTarifPaylas" runat="server" CssClass="auto-style14" Height="50px" Text="Tarif Paylaş" Width="200px" OnClick="btnTarifPaylas_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
