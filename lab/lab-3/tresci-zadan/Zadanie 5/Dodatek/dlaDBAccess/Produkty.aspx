<%@ Page Title="Produkty" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Produkty.aspx.cs" CodeFile="Produkty.aspx.cs" Inherits="cwiczenie6.Produkty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--<asp:LinqDataSource ID="KategorieLinqDataSource" ContextTypeName="cwiczenie6.App_Code.AdventureWorksDataContext" TableName="ProductCategories" Select="new(ProductCategoryID,Name)" Where="ParentProductCategoryID=null" runat="server"></asp:LinqDataSource>-->
    <asp:AccessDataSource ID="KategorieAccessDataSource" DataFile="~/App_Data/AdventureWorksLT_Data.mdb" SelectCommand="SELECT [ProductCategoryID], [Name] FROM [ProductCategory] WHERE ([ParentProductCategoryID] is NULL)" runat="server"></asp:AccessDataSource>
    <!--<asp:LinqDataSource ID="PodkategorieLinqDataSource" ContextTypeName="cwiczenie6.App_Code.AdventureWorksDataContext" TableName="ProductCategories" Select="new (ProductCategoryID, Name)" Where="ParentProductCategoryID == @ParentProductCategoryID" runat="server" EntityTypeName="">
        <WhereParameters>
            <asp:ControlParameter ControlID="KategorieListBox" PropertyName="SelectedValue" DefaultValue="-1" Name="ParentProductCategoryID" Type="Int32"></asp:ControlParameter>
        </WhereParameters>
    </asp:LinqDataSource>-->
    <asp:AccessDataSource ID="PodkategorieAccessDataSource" DataFile="~/App_Data/AdventureWorksLT_Data.mdb" SelectCommand="SELECT [ProductCategoryID], [Name] FROM [ProductCategory] WHERE ([ParentProductCategoryID] = ?)" runat="server">
        <SelectParameters>
            <asp:ControlParameter ControlID="KategorieListBox" PropertyName="SelectedValue" DefaultValue="-1" Name="ParentProductCategoryID" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:AccessDataSource>
    <!--<asp:LinqDataSource ID="ProduktyLinqDataSource" ContextTypeName="cwiczenie6.App_Code.AdventureWorksDataContext" Select="new (ProductID, Name, ProductNumber, Color, ListPrice)" TableName="Products" Where="ProductCategoryID == @ProductCategoryID" runat="server" EntityTypeName="">
        <WhereParameters>
            <asp:ControlParameter ControlID="PodkategorieListBox" PropertyName="SelectedValue" DefaultValue="-1" Name="ProductCategoryID" Type="Int32"></asp:ControlParameter>
        </WhereParameters>
    </asp:LinqDataSource>-->
    <asp:AccessDataSource ID="ProduktyAccessDataSource" DataFile="~/App_Data/AdventureWorksLT_Data.mdb" SelectCommand="SELECT [ProductID], [Name], [ProductNumber], [Color], [ListPrice] FROM [Product] WHERE ([ProductCategoryID] = ?)" runat="server">
        <SelectParameters>
            <asp:ControlParameter ControlID="PodkategorieListBox" PropertyName="SelectedValue" DefaultValue="-1" Name="ProductCategoryID" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:ListBox ID="KategorieListBox" runat="server" DataSourceID="KategorieAccessDataSource" DataTextField="Name" DataValueField="ProductCategoryID" AutoPostBack="True"></asp:ListBox>&nbsp;
    <asp:ListBox ID="PodkategorieListBox" runat="server" DataSourceID="PodkategorieAccessDataSource" DataTextField="Name" DataValueField="ProductCategoryID" AutoPostBack="True"></asp:ListBox><br /><br />
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="ProduktyAccessDataSource" AllowPaging="True" PageSize="10" EnableViewState="False">
        <Columns>
            <asp:HyperLinkField DataTextField="Name" HeaderText="Nazwa produktu" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Szczegoly.aspx?id={0}"></asp:HyperLinkField>
            <asp:BoundField DataField="ProductNumber" HeaderText="Numer katalogowy" ReadOnly="True" SortExpression="ProductNumber"></asp:BoundField>
            <asp:BoundField DataField="Color" HeaderText="Kolor" ReadOnly="True" SortExpression="Color"></asp:BoundField>
            <asp:BoundField DataField="ListPrice" HeaderText="Cena" ReadOnly="True" SortExpression="ListPrice" DataFormatString="{0:c}"></asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>