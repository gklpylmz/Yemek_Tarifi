<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminKategori.aspx.cs" Inherits="Yemek_Tarifi.adminKategori" %>
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
            margin-left: 38px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
        <h2 class="auto-style3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>
                        <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="+" Width="50px" />
                        </strong></td>
                    <td class="auto-style10"><strong>
                        <asp:Button ID="Button3" runat="server" Height="50px" Text="-" Width="50px" OnClick="Button3_Click" />
                        </strong></td>
                    <td><strong>Kategori Listesi</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("kategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="kategoriAdminGuncelle.aspx?kategoriID=<%# Eval("kategoriID")%>"><asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/Restart.png" Width="50px" /></a>
                        </td>
                        <td class="auto-style4">
                            <a href="adminKategori.aspx?kategoriID=<%#Eval("kategoriID") %>&islem=sil"><asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/Trash.png" Width="50px" /></a>
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
                        <asp:Button ID="Button4" runat="server" Height="50px" Text="+" Width="50px" OnClick="Button4_Click" />
                        </strong></td>
                    <td class="auto-style10"><strong>
                        <asp:Button ID="Button6" runat="server" Height="50px" Text="-" Width="50px" />
                        </strong></td>
                    <td>Kategori Ekleme</td>
                </tr>
            </table>
        </h2>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style11">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Kategori Ad :</td>
                <td>
                    <asp:TextBox ID="txtKategoriAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Kategori Resim :&nbsp;</td>
                <td>
                    <asp:FileUpload ID="flupKategoriResim" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                  
                    <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="auto-style12" Height="54px" OnClick="btnEkle_Click" Width="85px" />
                  
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
        


    