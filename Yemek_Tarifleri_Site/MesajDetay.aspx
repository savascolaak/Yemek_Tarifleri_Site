<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mesaj Gönderen:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mesaj Başlık:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail Adresi:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" runat="server" Width="199px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox4" runat="server" Height="150px" Width="202px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

