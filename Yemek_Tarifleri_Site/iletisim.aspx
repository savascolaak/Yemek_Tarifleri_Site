<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
        text-align: right;
    }
    .auto-style14 {
        font-size: x-large;
        color: #CCFF99;
    }
    .auto-style15 {
        text-align: right;
        height: 66px;
    }
    .auto-style16 {
        height: 66px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style14" colspan="2"><em><strong>Mesaj Paneli</strong></em></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="219px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="219px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="219px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Mesaj:</strong></td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="115px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Height="50px" OnClick="Button1_Click" Text="Gönder" Width="114px" />
            </strong></td>
    </tr>
</table>
</asp:Content>

