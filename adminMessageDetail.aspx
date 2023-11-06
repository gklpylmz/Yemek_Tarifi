<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminMessageDetail.aspx.cs" Inherits="Yemek_Tarifi.adminMessageDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>Mesaj Detayları</strong></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Gönderen :</strong></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Mail :</strong></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Başlık :</strong></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Mesaj :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" TextMode="MultiLine" Width="320px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
