﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetayAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitesi.MesajDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            height: 27px;
        }
        .auto-style19 {
            height: 26px;
        }
        .auto-style20 {
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
            <td class="auto-style18"><strong>MESAJ GÖNDEREN:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>BAŞLIK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>MESAJ İÇERİK:</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style20" Height="267px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
