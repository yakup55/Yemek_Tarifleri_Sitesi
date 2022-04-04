<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        margin-left: 40px;
    }
    .auto-style17 {
        height: 29px;
        margin-left: 40px;
    }
    .auto-style18 {
        height: 45px;
    }
    .auto-style19 {
        height: 45px;
        margin-left: 40px;
    }
    .auto-style20 {
        width: 308px;
    }
    .auto-style21 {
        width: 100%;
        height: 357px;
    }
    .auto-style22 {
        text-align: right;
    }
    .auto-style23 {
        height: 29px;
        text-align: right;
    }
    .auto-style24 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style20">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<table class="auto-style21">
    <tr>
        <td class="auto-style22">TARİF AD:</td>
        <td>
            <asp:TextBox ID="TarifAd" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">MALZEMELER:</td>
        <td class="auto-style15">
            <asp:TextBox ID="TarifMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">YAPILIŞ:</td>
        <td class="auto-style17">
            <asp:TextBox ID="TarifYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">RESİM:</td>
        <td class="auto-style17">
            <asp:FileUpload ID="TarifResim" runat="server" Width="200px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style23">TARİF ÖNEREN:</td>
        <td class="auto-style17">
            <asp:TextBox ID="TarifOneren" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">MAİL ADRESİ:</td>
        <td class="auto-style17">
            <asp:TextBox ID="TarifMailAdres" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18"></td>
        <td class="auto-style19">
            <asp:Button ID="BtnTarifOner" runat="server" Text="TARİF ÖNER" BackColor="#66FF33" CssClass="auto-style24" OnClick="BtnTarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>
