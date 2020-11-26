<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Kategorie.ascx.cs" Inherits="WebApplication1.Kontrolki.Kategorie" %>
    <asp:sqldatasource id="KategorieSqlDataSource" runat="server" connectionstring="<%$ ConnectionStrings:AdventureWorksLTConnectionString1 %>" selectcommand="
SELECT 
      ProductCategoryID
      ,[Name]
  FROM [AdventureWorksLT].[SalesLT].[ProductCategory]
  where ParentProductCategoryID IS NULL"></asp:sqldatasource>
<asp:Repeater ID="KategorieRepeater" runat="server" DataSourceID="KategorieSqlDataSource">
    <HeaderTemplate>
        <p><strong>Wybierz kategorię produktu</strong> <br /></p>
        
    </HeaderTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server"
            NavigateUrl='<%# "~/Produkty.aspx?katID=" + Eval("ProductCategoryID") %>'
            Text='<%# Eval("Name") %>'></asp:HyperLink> <br />
    </ItemTemplate>
</asp:Repeater>
