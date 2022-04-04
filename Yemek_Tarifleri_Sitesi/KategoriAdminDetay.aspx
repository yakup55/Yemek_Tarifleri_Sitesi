<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
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
            <td><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Btn_Guncelle" runat="server" CssClass="auto-style18" Text="GÜNCELLE" Width="131px" OnClick="Btn_Guncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
