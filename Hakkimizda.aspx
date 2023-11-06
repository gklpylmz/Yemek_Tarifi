<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1"><strong>HAKKIMIZDA</strong></h1>
    <asp:Image ID="Image1" runat="server" Height="292px" ImageUrl="~/resimler/hakkimizda.jpg" Width="550px" />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("hakkimizdaMetin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    
</asp:Content>
