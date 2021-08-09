<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
        text-align: center;
    }
    .auto-style15 {
        text-align: center;
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <div class="auto-style15">
            <strong>HAKKIMIZDA</strong></div>
        <div class="auto-style14">
            <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>

        </div>
    </p>
<p>

        <asp:Image ID="Image1" runat="server" Height="134px" ImageUrl="~/Resimler/indir.jpg" Width="448px" />
    </p>
</asp:Content>

