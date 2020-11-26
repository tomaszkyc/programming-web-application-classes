<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Szczegoly.aspx.cs" Inherits="WebApplication1.Szczegoly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="szczegolyMultiView" runat="server">
        <asp:View ID="prawidlowyView" runat="server">
            <asp:Label ID="nazwaLabel" runat="server"></asp:Label>
            <br />
            <asp:Image ID="produktImage" runat="server" />
            <br />
            Kategoria: <asp:Label ID="kategoriaLabel" runat="server"></asp:Label>
            <br />
            Cena: <asp:Label ID="cenaLabel" runat="server"></asp:Label>
            <br />
            Kolor: <asp:Label ID="kolorLabel" runat="server"></asp:Label>
            <br />
            Opis: <asp:Label ID="opisLabel" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="KoszykHyperLink" runat="server" Text="Dodaj do koszyka" /> <br />
        </asp:View>
        <asp:View ID="blednyView" runat="server">
            Nieprawidłowy produkt <br />
        </asp:View>
    </asp:MultiView>
    <br />
    <a href="Produkty.aspx">Powrót do przeglądania produktów</a>
</asp:Content>
