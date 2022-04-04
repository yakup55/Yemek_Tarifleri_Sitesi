<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style23 {
            width: 100%;
            height: 41px;
        }
        
    .auto-style21 {
        height: 14px;
        width: 27px;
    }
        .auto-style19 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style22 {
        height: 14px;
        width: 19px;
    }
        .auto-style20 {
            height: 14px;
        }
        .auto-style18 {
        text-align: right;
    }
        .auto-style28 {
            text-align: left;
            width: 260px;
        }
        .auto-style25 {
            text-align: right;
            width: 377px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style23" __designer:mapid="1">
            <tr __designer:mapid="2">
                <td class="auto-style21" __designer:mapid="3"><strong __designer:mapid="4">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style22" __designer:mapid="6"><strong __designer:mapid="7">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click1"    />
                    </strong></td>
                <td class="auto-style20" __designer:mapid="9">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style18" Height="277px" Width="742px">
                    <ItemTemplate>
                        <table class="auto-style15">
                            <tr>
                                <td class="auto-style28">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style25">&nbsp;</td>
                                <td class="auto-style18">
                                    <asp:Image ID="Image4" runat="server" Height="49px" ImageUrl="~/İmage/tik-isareti.png" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList4" runat="server" CssClass="auto-style18" Height="277px" Width="742px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style25">&nbsp;</td>
                        <td class="auto-style18">
                           
                            <a href="YemekAdminDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image6" runat="server" Height="41px" ImageUrl="~/İmage/tik-isareti.png" /></a>
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <p>
        <br />
    </p>
    <p>
    </p>
</asp:Content>
