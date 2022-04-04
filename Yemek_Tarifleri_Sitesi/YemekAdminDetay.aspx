<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.YemekAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            height: 26px;
        }
        .auto-style19 {
            border: 2px solid #ff0000;
            border-radius: 10px;
        }
        .auto-style20 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
    <tr>
        <td><strong>YEMEK RESİM:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style20" />
        </td>
    </tr>
    <tr>
        <td><strong>YEMEK AD:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>MALZEMELER:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style19" Height="342px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>TARİF:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style19" Height="354px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>KATEGORİ:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style18">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style19" OnClick="Button1_Click" Text="GÜNCELLE" Width="225px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20">
            <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="27px" OnClick="Button2_Click" Text="GÜNÜN YEMEĞİ SEÇ" Width="225px" />
        </td>
    </tr>
</table>
</asp:Content>
