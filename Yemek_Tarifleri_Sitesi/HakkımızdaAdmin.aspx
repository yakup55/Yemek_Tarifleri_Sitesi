<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.HakkımızdaAdmin" %>
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
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            border: 2px solid #ff0000;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style15" __designer:mapid="234">
        <tr __designer:mapid="235">
            <td class="auto-style21" __designer:mapid="236"><strong __designer:mapid="237">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style22" __designer:mapid="239"><strong __designer:mapid="23a">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"    />
                </strong></td>
            <td class="auto-style20" __designer:mapid="23c">HAKKIMIZDA</td>
        </tr>
    </table>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style15">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="212px" TextMode="MultiLine" Width="736px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style24" Height="39px" OnClick="Button3_Click" Text="GÜNCELLE" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>
