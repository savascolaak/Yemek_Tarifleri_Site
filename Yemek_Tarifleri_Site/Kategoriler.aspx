<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 30px;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            background-color: #669999;
        }
        .auto-style18 {
            background-color: #66FFFF;
        }
        .auto-style19 {
            margin-left: 40px;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-size: medium;
        }
        .auto-style21 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style13">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px" CssClass="auto-style18">
            <ItemTemplate>
                <table class="auto-style13">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                           <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style21">
                          <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/Güncelle.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Panel>
    <asp:Panel runat="server">
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17" style="margin-top:15px;">
            <table class="auto-style13">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>KATEGORİ EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel4">
        <table class="auto-style13">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori İkon</td>
                <td class="auto-style19">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style20" Height="36px"  Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

