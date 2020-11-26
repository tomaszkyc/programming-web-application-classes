<%@ Page Title="Produkty" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Produkty.aspx.cs" Inherits="WebApplication1.Produkty" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:listbox runat="server" datasourceid="KategorieSqlDataSource" datatextfield="Name" datavaluefield="ProductCategoryID" AutoPostBack="True" ID="KategorieListBox1" OnSelectedIndexChanged="KategorieListBox1_SelectedIndexChanged"></asp:listbox>

    <asp:sqldatasource id="KategorieSqlDataSource" runat="server" connectionstring="<%$ ConnectionStrings:AdventureWorksLTConnectionString1 %>" selectcommand="
SELECT 
      ProductCategoryID
      ,[Name]
  FROM [AdventureWorksLT].[SalesLT].[ProductCategory]
  where ParentProductCategoryID IS NULL" OnSelecting="KategorieSqlDataSource_Selecting"></asp:sqldatasource>
    <asp:sqldatasource id="PodkategorieSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksLTConnectionString1 %>" SelectCommand="SELECT [ProductCategoryID], [Name] FROM [AdventureWorksLT].[SalesLT].[ProductCategory] WHERE ([ParentProductCategoryID] = @ParentProductCategoryID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="KategorieListBox1" DefaultValue="-1" Name="ParentProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:sqldatasource>
    <asp:listbox runat="server" ID="PodkategorieListBox" AutoPostBack="True" DataSourceID="PodkategorieSqlDataSource" DataTextField="Name" DataValueField="ProductCategoryID"></asp:listbox>
    <asp:sqldatasource runat="server" ID="ProduktySqlDataSource" ConnectionString="<%$ ConnectionStrings:AdventureWorksLTConnectionString1 %>" SelectCommand="SELECT [ProductID], [Name], [ProductNumber], [Color], [ListPrice] FROM [AdventureWorksLT].[SalesLT].[Product] WHERE ([ProductCategoryID] = @ProductCategoryID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="PodkategorieListBox" DefaultValue="-1" Name="ProductCategoryID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:sqldatasource>
    <asp:gridview runat="server" AllowPaging="True" DataSourceID="ProduktySqlDataSource" EnableModelValidation="True" AutoGenerateColumns="False" EnableViewState="False">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}" DataTextField="Name" HeaderText="Nazwa produktu" />
            <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" SortExpression="ProductNumber" />
            <asp:BoundField DataField="Color" HeaderText="Kolor" SortExpression="Color" />
            <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}" HeaderText="Cena" SortExpression="ListPrice" />
            <asp:ImageField DataAlternateTextField="Name" DataAlternateTextFormatString="Miniatura {0}" DataImageUrlField="ProductID" DataImageUrlFormatString="~/Miniatura.aspx?id={0}">
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Zakupy.aspx?id={0}" HeaderText="Dodaj do koszyka" />
        </Columns>
    </asp:gridview>
</asp:Content>
