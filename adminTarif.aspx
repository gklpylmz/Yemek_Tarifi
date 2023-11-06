<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminTarif.aspx.cs" Inherits="Yemek_Tarifi.adminTarif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" Height="58px" Width="548px">
        <h2 class="auto-style3">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Button ID="Button1" runat="server" Height="50px" Text="+" Width="60px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style8"><strong>
                        <asp:Button ID="Button2" runat="server" Height="50px" Text="-" Width="60px" OnClick="Button2_Click"/>
                    </strong></td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Onaylanan Tarifler</td>
                </tr>
            </table>
        </h2>
    </asp:Panel>

     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="546px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">
                            <h3><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("tarifAd") %>'></asp:Label>
                                </strong></h3>
                        </td>
                        <td class="auto-style6">
                   
                            <a href="adminTarifDetay.aspx?tarifID=<%#Eval("tarifID") %>"><asp:Image ID="Image2" runat="server" Height="56px" ImageUrl="~/icons/Glasses.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" Height="58px" Width="548px">
        <h2 class="auto-style3">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Button ID="Button3" runat="server" Height="50px" Text="+" Width="60px" OnClick="Button3_Click"  />
                    </strong></td>
                    <td class="auto-style8"><strong>
                        <asp:Button ID="Button4" runat="server" Height="50px" Text="-" Width="60px" OnClick="Button4_Click" />
                    </strong></td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Onaysız Tarifler</td>
                </tr>
            </table>
        </h2>
    </asp:Panel>
       <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="546px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">
                            <h3><strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("tarifAd") %>'></asp:Label>
                                </strong></h3>
                        </td>
                        <td class="auto-style6">
                   
                            <a href="adminTarifDetay.aspx?tarifID=<%#Eval("tarifID") %>"><asp:Image ID="Image2" runat="server" Height="56px" ImageUrl="~/icons/Glasses.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
