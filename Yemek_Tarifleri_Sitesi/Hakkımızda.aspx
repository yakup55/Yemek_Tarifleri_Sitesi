<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style13">
        <strong>HAKKIMIZDA</strong></p>
    <p class="auto-style13">
        <asp:Image ID="Image2" runat="server" Height="114px" ImageUrl="~/İmage/admin.jpg" Width="219px" />
    </p>
    <p>
        <asp:DataList ID="DataList3" runat="server" Width="742px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
