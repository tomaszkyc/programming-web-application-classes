<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<%@ Register src="Kontrolki/NoweProdukty.ascx" tagname="NoweProdukty" tagprefix="uc1" %>
<%@ Register src="Kontrolki/WybraneProdukty.ascx" tagname="WybraneProdukty" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:WybraneProdukty ID="WybraneProdukty2" runat="server" />
</asp:Content>
