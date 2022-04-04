<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            text-align: left;
            width: 270px;
        }
        .auto-style17 {
            text-align: center;
            width: 270px;
        }
        .auto-style18 {
            width: 270px;
        }
        .auto-style19 {
            text-align: justify;
        }
        .auto-style20 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style17"><strong>MESAJ PANELİ</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;<strong>AD SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="GonderenAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>MAİL ADRESİNİZ:</strong></td>
            <td>
                <asp:TextBox ID="GonderenMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>KONU:</strong></td>
            <td>
                <asp:TextBox ID="GonderenKonu" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>MESAJ:</strong></td>
            <td>
                <asp:TextBox ID="GonderenMesaj" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19"><strong>
                <asp:Button ID="BtnGonder" runat="server" CssClass="auto-style20" Text="GÖNDER" OnClick="Button1_Click" Width="95px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
