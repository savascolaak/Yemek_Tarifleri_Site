<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            font-size: x-large;
            color: #999999;
        }
        .auto-style14 {
            font-size: x-small;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            font-size: xx-large;
            color: #999999;
        }
        .auto-style17 {
            background-color: #FFFF99;
        }
    .auto-style18 {
        text-align: right;
    }
    .auto-style19 {
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
    <br class="auto-style13" />
    </strong>
    <asp:DataList ID="DataList2" runat="server" Width="271px">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style17">Yorum Yapma Paneli</div>
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yorumunuz:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" OnClick="Button1_Click" Text="Yorum Yap" Width="150px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</table>
</asp:Content>

