<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminMessage.aspx.cs" Inherits="Yemek_Tarifi.adminMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 547px;
        }
        .auto-style4 {
            width: 730px;
            text-align: center;
        }
        .auto-style5 {
            width: 57px;
        }
        .auto-style6 {
            width: 259px;
        }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            margin-left: 80px;
        }
        .auto-style9 {
            width: 751px;
            margin-left: 120px;
        }
        .auto-style10 {
            width: 544px;
        }
    </style>
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
                    <td class="auto-style4">Mesajlar</td>
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
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("messageSender") %>'></asp:Label>
                                </strong></h3>
                        </td>
                        <td class="auto-style6">
                   
                            <a href="adminMessageDetail.aspx?messageID=<%# Eval("messageID")%>"><asp:Image ID="Image2" runat="server" Height="56px" ImageUrl="~/icons/Glasses.png" Width="60px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
