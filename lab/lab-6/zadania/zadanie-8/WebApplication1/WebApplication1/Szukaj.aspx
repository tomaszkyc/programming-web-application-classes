<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Szukaj.aspx.cs" Inherits="WebApplication1.Szukaj" %>
<%@ Register src="Kontrolki/Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Szukaj ID="Szukaj1" runat="server" />
</asp:Content>
