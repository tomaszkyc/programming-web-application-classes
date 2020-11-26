<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="ZawartoscSerwisu.aspx.cs" Inherits="WebApplication1.ZawartoscSerwisu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="site-map-container">
        <h2>Poniżej znajduje się mapka naszego serwisu:</h2> 
        <asp:SiteMapDataSource ID="mySiteMapDataSource" runat="server" /><asp:SiteMapDataSource ID="MapaSerwisu" ShowStartingNode="false" runat="server"/>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="mySiteMapDataSource"></asp:TreeView>
    </div>
</asp:Content>
