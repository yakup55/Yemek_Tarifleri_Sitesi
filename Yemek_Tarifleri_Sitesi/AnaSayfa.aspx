<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            height: 26px;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            width: 100%;
            height: 135px;
        }
        .auto-style18 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:DataList ID="DataList2" runat="server" Width="749px">
            <ItemTemplate>
                <table class="auto-style17">
                    <tr>
                        <td class="auto-style18"><strong>
                            <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label></a>


                            </strong>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>MALZEMELER:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>YEMEK TARİF:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"><strong>YEMEK TARİH:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            &nbsp;YEMEK PUAN:<asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </strong></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

