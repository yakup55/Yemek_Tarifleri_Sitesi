<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

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
            width: 675px;
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
        .auto-style26 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15" __designer:mapid="234">
        <tr __designer:mapid="235">
            <td class="auto-style21" __designer:mapid="236"><strong __designer:mapid="237">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1" />
                </strong></td>
            <td class="auto-style22" __designer:mapid="239"><strong __designer:mapid="23a">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </strong></td>
            <td class="auto-style20" __designer:mapid="23c">ONAYLANAN YORUM LİSTESİ</td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style18" Height="277px" Width="742px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style25"><a href="KategoriAdminDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                            <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/İmage/update.jpg" Width="45px" />
                            </a></td>
                        <td class="auto-style18"><a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid")%>&islem=sil">
                            <asp:Image ID="Image3" runat="server" CssClass="auto-style26" Height="30px" ImageUrl="~/İmage/delete.jpg" Width="50px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    </asp:Panel>
    <table class="auto-style15" __designer:mapid="234">
        <tr __designer:mapid="235">
            <td class="auto-style21" __designer:mapid="236"><strong __designer:mapid="237">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
            <td class="auto-style22" __designer:mapid="239"><strong __designer:mapid="23a">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
                </strong></td>
            <td class="auto-style20" __designer:mapid="23c">ONAYSIZ YORUM LİSTESİ</td>
        </tr>
    </table>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style18" Height="277px" Width="742px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style28">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style25"><a href="YorumDetayAdmin.aspx?Yorumid=<%# Eval("Yorumid") %>">
                            <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/İmage/update.jpg" Width="45px" />
                            </a></td>
                        <td class="auto-style18"><a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid")%>&islem=sil">
                            <asp:Image ID="Image5" runat="server" CssClass="auto-style26" Height="30px" ImageUrl="~/İmage/delete.jpg" Width="50px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
