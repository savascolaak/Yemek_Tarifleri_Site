<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 54px;
            background-color: #669999;
        }
        .auto-style15 {
            font-size: x-large;
            background-color: #669999;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style13">
        <tr>
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" Text="+" />
                <asp:Button ID="Button2" runat="server" Text="-" Width="23px" />
            </td>
            <td class="auto-style15"><strong>Mesajlar Paneli</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style13">
                    <tr>
                        <td style="border-style: inset; border-width: medium"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style17">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/İconlar/iconfinder_Streamline-52_185072.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
   

        
</asp:Content>

