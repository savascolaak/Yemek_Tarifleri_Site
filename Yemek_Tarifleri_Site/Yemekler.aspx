<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style17 {
            background-color: #669999;
        }
        .auto-style15 {
            width: 30px;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style18 {
            background-color: #66FFFF;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            margin-left: 40px;
        }
        .auto-style24 {
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style13">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="447px" CssClass="auto-style18">
                <ItemTemplate>
                    <table class="auto-style13">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.jpg" Width="30px" />
                                </td>
                            <td class="auto-style22" >
                               
                                <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/İconlar/Güncelle.jpg" Width="30px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    <div style="height:auto">
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17" style="margin-top:15px;">
            <table class="auto-style13">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </td>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                        </strong></td>
                    <td>YEMEK EKLE</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div>
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style13">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Yemek Ad:"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Yemek Malzeme:"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TextBox2" runat="server" Height="150px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Yemek Tarif"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Kategori"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="258px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style23">
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style24" Text="Ekle" Width="86px" OnClick="Button5_Click" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>

