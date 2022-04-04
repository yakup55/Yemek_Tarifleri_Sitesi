<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style18 {
        text-align: right;
    }
        .auto-style19 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style20 {
            height: 14px;
        }
    .auto-style21 {
        height: 14px;
        width: 27px;
    }
    .auto-style22 {
        height: 14px;
        width: 19px;
    }
        .auto-style25 {
            text-align: right;
            width: 377px;
        }
        .auto-style26 {
            margin-left: 0px;
        }
        .auto-style28 {
            text-align: left;
            width: 260px;
        }
        .auto-style29 {
            height: 12px;
        }
        .auto-style30 {
            border: 2px solid #ff0000;
            border-radius: 10px;
        }
        .auto-style31 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="196px">
        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style15">
                <tr>
                    <td class="auto-style21"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style22"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" />
                        </strong></td>
                    <td class="auto-style20">KATEGORİ LİSTESİ</td>
                </tr>
            </table>
            <asp:Panel ID="Panel3" runat="server">
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style18" Height="277px" Width="742px">
                    <ItemTemplate>
                        <table class="auto-style15">
                            <tr>
                                <td class="auto-style28">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style25">
                                    <a href="KategoriAdminDetay.aspx?Kategoriid=<%# Eval("Kategoriid") %>"><asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/İmage/update.jpg" Width="45px" /></a>
                                </td>
                                <td class="auto-style18">
                                    <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"><asp:Image ID="Image3" runat="server" CssClass="auto-style26" Height="30px" ImageUrl="~/İmage/delete.jpg" Width="50px" /></a> 
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style21"><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click1"  />
                            </strong></td>
                        <td class="auto-style22"><strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click1"  />
                            </strong></td>
                        <td class="auto-style20">KATEGORİ EKLEME</td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server">
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style29"></td>
                        <td class="auto-style29"></td>
                    </tr>
                    <tr>
                        <td><strong>KATEGORİ AD:</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>KATEGORİ İKON:</strong></td>
                        <td>
                            <asp:FileUpload ID="Gozat" runat="server" CssClass="tb5" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style31">
                            <asp:Button ID="Btn_Ekle" runat="server" CssClass="auto-style30" OnClick="Btn_Ekle_Click" Text="EKLE" Width="84px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
</asp:Panel>
</asp:Content>

