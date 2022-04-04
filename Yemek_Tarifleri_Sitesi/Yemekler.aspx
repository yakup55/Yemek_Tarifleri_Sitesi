<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Yemekler" %>
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
        }
        .auto-style23 {
            width: 100%;
            height: 41px;
        }
        .auto-style29 {
            height: 36px;
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
        .auto-style32 {
            height: 32px;
        }
        .auto-style33 {
        border: 2px solid #ff0000;
        border-radius: 10px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style29">
        <table class="auto-style23" __designer:mapid="1">
            <tr __designer:mapid="2">
                <td class="auto-style21" __designer:mapid="3"><strong __designer:mapid="4">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style22" __designer:mapid="6"><strong __designer:mapid="7">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style20" __designer:mapid="9">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </p>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style18" Height="277px" Width="742px">
                        <ItemTemplate>
                            <table class="auto-style15">
                                <tr>
                                    <td class="auto-style28">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style25"><a href="YemekAdminDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                        <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/İmage/update.jpg" Width="45px" />
                                        </a></td>
                                    <td class="auto-style18"><a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">
                                        <asp:Image ID="Image3" runat="server" CssClass="auto-style26" Height="30px" ImageUrl="~/İmage/delete.jpg" Width="50px" />
                                        </a></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
    </asp:Panel>
    <p class="auto-style32">
                <table class="auto-style15" __designer:mapid="39">
                    <tr __designer:mapid="3a">
                        <td class="auto-style21" __designer:mapid="3b"><strong __designer:mapid="3c">
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                            </strong></td>
                        <td class="auto-style22" __designer:mapid="3e"><strong __designer:mapid="3f">
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                            </strong></td>
                        <td class="auto-style20" __designer:mapid="41">YEMEK EKLEME</td>
                    </tr>
                </table>
            <br />
    </p>
    
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style15">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32"><strong>YEMEK AD:</strong></td>
                <td class="auto-style32">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="167px" TextMode="MultiLine" Width="231px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>YEMEK TARİFİ:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="173px" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style33" OnClick="Button5_Click1" Text="EKLE" Width="113px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    
   
</asp:Content>
