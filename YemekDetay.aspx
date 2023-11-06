<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            background-color: #FFC088;
        }
        .auto-style6 {
            margin-left: 158px;
        }
        .auto-style7 {
            margin-left: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style1" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumİcerik") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div class="auto-style5" style="text-align:center;"> Yorum Yapma Paneli

     </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Ad Soyad :</strong></td>
                <td>
                    <asp:TextBox ID="txtyorumADS" runat="server" CssClass="auto-style7" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Mail :</strong></td>
                <td>
                    <asp:TextBox ID="txtyorumMail" runat="server" CssClass="auto-style7" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yorum :</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtYorumIcerik" runat="server" CssClass="auto-style7" Height="106px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Yorum Yap" CssClass="auto-style6" Height="44px" OnClick="Button1_Click" Width="122px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
