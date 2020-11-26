<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="WynikiWyszukiwania.aspx.cs" Inherits="WebApplication1.WynikiWyszukiwania" %>

<%@ Register Src="Kontrolki/Szukaj.ascx" TagName="Szukaj" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <br />
    
    <uc1:Szukaj ID="Szukaj1" runat="server" />
    <br />
    <p>
        Wyniki wyszukiwania:
    </p>
    <br />
    <p>
        <asp:GridView ID="WynikiWyszukiwaniaGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ProductID"
                    DataNavigateUrlFormatString="~Szczegoly.aspx?id={0}"
                    HeaderText="Nazwa produktu" DataTextField="Name"
                    Text="Nazwa produktu" />
                <asp:BoundField DataField="ProductNumber"
                    HeaderText="Numer katalogowy" SortExpression="ProductNumber" />
                <asp:BoundField DataField="Color" HeaderText="Kolor" SortExpression="Color" />
                <asp:BoundField DataField="ListPrice" DataFormatString="{0:c}"
                    HeaderText="Cena" SortExpression="ListPrice" />
            </Columns>
        </asp:GridView>
</asp:Content>
