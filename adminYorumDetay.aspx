<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminYorumDetay.aspx.cs" Inherits="Yemek_Tarifi.adminYorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 43px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
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
            <td class="auto-style4">Ad Soyad :&nbsp;</td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mail Adresi :</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yorum :</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtYorum" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yemek :</td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnOnay" runat="server" CssClass="auto-style3" Height="48px" OnClick="btnOnay_Click" Text="Onayla" Width="89px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
