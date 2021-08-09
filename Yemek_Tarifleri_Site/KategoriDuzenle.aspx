<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style14 {
        margin-left: 40px;
    }
    .auto-style15 {
        margin-left: 80px;
    }
    .auto-style16 {
        font-size: medium;
        font-weight: bold;
    }
    .auto-style17 {
        text-align: right;
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
        <td class="auto-style17"><strong>KATEGORİ AD:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>ADET</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>RESİM</strong></td>
        <td class="auto-style15">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style15"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="45px" OnClick="Button1_Click" Text="Güncelle" Width="93px" />
            </strong></td>
    </tr>
</table>
</asp:Content>

