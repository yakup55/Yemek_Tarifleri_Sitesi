<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetayAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YorumDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            height: 29px;
        }
        .auto-style19 {
            border: 2px solid #ff0000;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>AD SOYAD:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>İÇERİK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="257px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Text="ONAYLA" Width="113px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
