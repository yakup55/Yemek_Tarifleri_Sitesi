  <%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 101%;
        height: 28px;
    }
        .auto-style15 {
            text-align: left;
        }
    .auto-style16 {
        height: 27px;
    }
    .auto-style17 {
        height: 27px;
        text-align: right;
    }
    .auto-style18 {
        width: 100%;
        height: 50px;
    }
    .auto-style19 {
        text-align: left;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style15">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <strong>MALZEMELER:</strong><asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style14">
            <tr>
                <td class="auto-style15">
                    <strong>TARİF:</strong><asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style14">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="159px" ImageUrl='<%# Eval("YemekResim") %>' Width="735px" />
                </td>
            </tr>
        </table>
        <table class="auto-style14">
            <tr>
                <td class="auto-style15">
                    <table class="auto-style18">
                        <tr>
                            <td class="auto-style16"><strong>TARİH:</strong><asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>PUAN:</strong><asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="auto-style14">
            <tr>
                <td class="auto-style19">
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
</asp:Content>
