<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminYorumlar.aspx.cs" Inherits="Yemek_Tarifi.adminYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 101px;
        }

        .auto-style4 {
            width: 61px;
            text-align: center;
        }

        .auto-style5 {
            width: 543%;
        }

        .auto-style7 {
            width: 74px;
        }

        .auto-style8 {
            width: 81px;
        }

        .auto-style9 {
            text-align: center;
        }

        .auto-style10 {
            margin-left: 25px;
        }

        .auto-style11 {
            width: 29px;
        }

        .auto-style13 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <h2 class="auto-style3">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Button ID="Button1" runat="server" Height="50px" Text="+" Width="60px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style8"><strong>
                        <asp:Button ID="Button2" runat="server" Height="50px" Text="-" Width="60px" OnClick="Button2_Click" />
                    </strong></td>
                    <td class="auto-style9">Onaylanan Yorum<strong> Listesi</strong></td>
                </tr>
            </table>
        </h2>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="546px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <a href="adminYemekGuncelle.aspx?yemekID=<%# Eval("yemekID")%>">
                                <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/Restart.png" Width="50px" /></a>
                        </td>
                        <td class="auto-style4">
                            <a href="adminYemek.aspx?yemekID=<%#Eval("yemekID") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/Trash.png" Width="50px" CssClass="auto-style10" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <h2 class="auto-style3">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style7"><strong>



                        <asp:Button ID="Button3" runat="server" Height="50px" Text="+" Width="60px" OnClick="Button3_Click" />



                    </strong></td>
                    <td class="auto-style8"><strong>



                        <asp:Button ID="Button4" runat="server" Height="50px" Text="-" Width="60px" OnClick="Button4_Click" />



                    </strong></td>
                    <td class="auto-style9">Onaylanmayan Yorum<strong> Listesi</strong></td>
                </tr>
            </table>
        </h2>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="546px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <a href="adminYorumDetay.aspx?yorumID=<%# Eval("yorumID")%>">
                                <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icons/Restart.png" Width="50px" /></a>
                        </td>
                        <td class="auto-style4">
                            <a href="adminYemek.aspx?yemekID=<%#Eval("yemekID") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icons/Trash.png" Width="50px" CssClass="auto-style10" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
