<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TariflerAdminDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.TariflerAdminDetay" %>
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
            <td><strong>TARİF AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>TARİF MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style18" Height="198px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>YAPILIŞ:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style18" Height="193px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td><strong>ÖNEREN:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>MAİL:</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="tb5"></asp:TextBox>
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
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Text="ONAYLA" Width="114px" />
            </td>
        </tr>
        </table>
</asp:Content>
