<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminTarifDetay.aspx.cs" Inherits="Yemek_Tarifi.adminTarifDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            margin-top: 0px;
            margin-bottom: 0px;
        }
         .auto-style18 {
             height: 29px;
         }
         .auto-style15 {
             width: 167px;
             height: 46px;
         }
         .auto-style19 {
             height: 46px;
         }
         .auto-style12 {
             font-weight: bold;
             margin-left: 92px;
         }
         .auto-style20 {
            text-align: right;
            width: 167px;
        }
        .auto-style21 {
            text-align: right;
            width: 167px;
            height: 29px;
        }
        .auto-style22 {
            margin-left: 80px;
        }
        .auto-style23 {
            width: 167px;
            height: 46px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style11">
        <table class="auto-style1">
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">Tarif Adı :</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtYemekAd0" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Malzemeler :</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtYemekMalzeme0" runat="server" Height="118px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;Tarif :</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtYemekTarif0" runat="server" Height="300px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Resim :</strong></td>
                <td class="auto-style19">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Sahibi :</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtYemekAd1" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Mail :</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtYemekAd2" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Kategori :</strong></td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="268px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="btnEkle1" runat="server" CssClass="auto-style12" Height="42px" OnClick="btnEkle_Click" Text="Onayla" Width="76px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
