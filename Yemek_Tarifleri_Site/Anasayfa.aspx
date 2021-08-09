<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style14 {
            background-color: #669999;
        }
        .auto-style15 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style14"><strong>
                        
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                        </strong>


                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Malzemeler</strong>:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        &nbsp; </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Yemek Tarifi:</strong>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
&nbsp; </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Eklenme Tarihi:</strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><em>Puan</em></strong>:<em><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #808080">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

