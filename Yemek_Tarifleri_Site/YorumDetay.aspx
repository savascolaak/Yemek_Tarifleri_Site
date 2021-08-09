<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style14 {
        margin-left: 80px;
    }
    .auto-style15 {
        text-align: right;
    }
    .auto-style16 {
        font-weight: bold;
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
        <td class="auto-style15">Ad Soyad:</td>
        <td class="auto-style14">
            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Mail Adresi:</td>
        <td class="auto-style14">
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">İçerik:</td>
        <td class="auto-style14">
            <asp:TextBox ID="txticerik" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Yemek:</td>
        <td class="auto-style14">
            <asp:TextBox ID="txtYemek" runat="server" Width="158px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14"><strong>
            <asp:Button ID="btnOnayla" runat="server" CssClass="auto-style16" OnClick="btnOnayla_Click" Text="Onayla" Width="150px" />
            </strong></td>
    </tr>
</table>
</asp:Content>

