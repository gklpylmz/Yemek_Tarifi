<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminYemek.aspx.cs" Inherits="Yemek_Tarifi.adminYemek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    .auto-style4 {
        text-align: right;
    }
    .auto-style5 {
        font-size: large;
    }
    .auto-style6 {
        text-align: left;
        width: 337px;
    }
        .auto-style8 {
            width: 55px;
        }
        .auto-style10 {
            width: 64px;
        }
        .auto-style11 {
            margin-top: 0px;
            margin-bottom: 0px;
        }
         .auto-style12 {
             font-weight: bold;
             margin-left: 92px;
         }
         .auto-style13 {
             font-weight: bold;
         }
         .auto-style15 {
             width: 181px;
             height: 46px;
         }
         .auto-style16 {
             text-align: right;
             width: 181px;
         }
         .auto-style17 {
             text-align: right;
             width: 181px;
             height: 29px;
         }
         .auto-style18 {
             height: 29px;
         }
         .auto-style19 {
             height: 46px;
         }
         .auto-style20 {
             font-size: small;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <h2 class="auto-style3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>
                        
                        <asp:Button ID="Button2" runat="server" Height="53px" OnClick="Button2_Click" Text="+" Width="57px" />
                        
                        </strong></td>
                    <td class="auto-style10"><strong>
                        
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="53px" OnClick="Button1_Click" Text="-" Width="57px" />
                        
                        </strong></td>
                    <td><strong>Yemek Listesi</strong></td>
                </tr>
            </table>
        </h2>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="546px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="adminYemekGuncelle.aspx?yemekID=<%# Eval("yemekID")%>"><asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/Restart.png" Width="50px" /></a>
                        </td>
                        <td class="auto-style4">
                            <a href="adminYemek.aspx?yemekID=<%#Eval("yemekID") %>&islem=sil"><asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/Trash.png" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
       <asp:Panel ID="Panel3" runat="server">
        <h2 class="auto-style3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>
                        
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="53px" OnClick="Button3_Click" Text="+" Width="57px" />
                        
                        </strong></td>
                    <td class="auto-style10"><strong>
                        
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="53px" OnClick="Button4_Click" Text="-" Width="57px" />
                        
                        </strong></td>
                    <td>Yemek Ekleme</td>
                </tr>
            </table>
        </h2>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style11">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">Yemek Ad :</td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Malzemeler :&nbsp;</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtYemekMalzeme" runat="server" Height="118px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Yemek Tarifi :</td>
                <td>
                  
                   
                  
                    <asp:TextBox ID="txtYemekTarif" runat="server" Height="300px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                  
                   
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Yemek Kategorisi :</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="drpdlYemekKategori" runat="server" CssClass="auto-style20" Font-Size="12pt" Height="20px" Width="276px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style12" Height="42px" OnClick="btnEkle_Click" Text="Ekle" Width="76px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
