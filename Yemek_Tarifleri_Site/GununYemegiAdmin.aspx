<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

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
        .auto-style19 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style13">
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                </td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
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
                            <td class="auto-style19"><a href='YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>'>
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/İconlar/3.png" Width="30px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

