<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            margin-left: 40px;
        }
        .auto-style12 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Tarif :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Image ID="Image1" runat="server" Height="235px" Width="518px" ImageUrl='<%# Eval("yemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Puan :</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Tarih :</strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
