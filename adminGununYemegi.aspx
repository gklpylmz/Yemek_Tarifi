<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminGununYemegi.aspx.cs" Inherits="Yemek_Tarifi.adminGununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 106px;
        }
        .auto-style4 {
            width: 103px;
        }
        .auto-style5 {
            width: 102px;
        }
        .auto-style6 {
            width: 101px;
        }
        .auto-style7 {
            width: 516%;
        }
        .auto-style8 {
            width: 72px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            margin-left: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="Panel1" runat="server">
        <h2 class="auto-style3">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style4"><strong>
                        
                        <asp:Button ID="Button2" runat="server" Height="53px" OnClick="Button2_Click" Text="+" Width="57px" CssClass="auto-style10" />
                        
                        </strong></td>
                    <td class="auto-style8"><strong>
                        
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="53px" OnClick="Button1_Click" Text="-" Width="57px" />
                        
                        </strong></td>
                    <td class="auto-style9"><strong>Yemek Listesi</strong></td>
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
                            <a href="adminYemekGuncelle.aspx?yemekID=<%# Eval("yemekID")%>"><asp:Image ID="Image2" runat="server" Height="50px" ImageUrl='<%# Eval("yemekAd") %>' Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
