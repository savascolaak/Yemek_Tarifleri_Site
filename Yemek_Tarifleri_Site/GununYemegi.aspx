<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        font-size: x-large;
    }
    .auto-style15 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style2">
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;<strong> Malzemeler: </strong>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Tarif: </strong>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Image ID="Image2" runat="server" Height="166px" ImageUrl="~/Resimler/kereviz-mucveri-tarifi.jpg" Width="288px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp; </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style10"><strong>Puan:</strong>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                &nbsp; </td>
                            <td class="auto-style15"><strong>Tarih:</strong>&nbsp;<asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

