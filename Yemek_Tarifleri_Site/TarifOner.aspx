<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
        margin-left: 40px;
    }
    .auto-style14 {
        text-align: right;
    }
    .auto-style15 {
        margin-left: 41px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Tarif Ad: </strong></td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="txtMazleme" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Yapılışı:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Resim:</strong></td>
        <td class="auto-style13">
            <asp:FileUpload ID="txtDosyaYolu" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Mail Adresi:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style13"><strong>
            <asp:Button ID="btnTarifiOner" runat="server" BackColor="#00FFCC" CssClass="auto-style15" Height="40px" Text="Tarifi Öner" Width="150px" OnClick="btnTarifiOner_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

