<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

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
            text-align: left;
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>ONAYLANAN YORUMLAR LİSTESİ</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="445px" CssClass="auto-style18">
                <ItemTemplate>
                    <table class="auto-style13">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style22"><a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İconlar/delete.jpg" Width="30px" />
                                </a></td>
                            <td >
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İconlar/Güncelle.jpg" Width="30px" />
                                </a></td>
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
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>ONAYLANMAYAN YORUM LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px" CssClass="auto-style18">
            <ItemTemplate>
                <table class="auto-style13">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style22">
                           <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/İconlar/delete.jpg" Width="30px" />
                        </td>
                        <td class="auto-style21">
                          <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/İconlar/Güncelle.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </div>
</asp:Content>

