<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            margin-left: 80px;
        }
        .auto-style15 {
            font-size: large;
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
            <td>Yemek Ad:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Malzemeler:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tarif:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori:</td>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="46px" Text="Güncelle" Width="114px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

