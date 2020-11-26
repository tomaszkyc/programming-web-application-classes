<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Zakupy.aspx.cs" Inherits="WebApplication1.Zakupy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="KoszykGridView" runat="server" EnableModelValidation="True" OnRowCancelingEdit="KoszykGridView_RowCancelingEdit" OnRowDeleting="KoszykGridView_RowDeleting" OnRowEditing="KoszykGridView_RowEditing" OnRowUpdating="KoszykGridView_RowUpdating" EnableViewState="False">
        <Columns>
            <asp:BoundField DataField="Nazwa" HeaderText="Nazwa produktu" ReadOnly="True" />
            <asp:BoundField DataField="Cena" DataFormatString="{0:c}" HeaderText="Cena" HtmlEncode="False" ReadOnly="True" />
            <asp:BoundField DataField="IloscSztuk" DataFormatString="{0:d}" HeaderText="Ilość sztuk" />
            <asp:BoundField DataField="Suma" DataFormatString="{0:c}" HeaderText="Wartość" HtmlEncode="False" ReadOnly="True" />
            <asp:CommandField ButtonType="Button" CancelText="Anuluj" DeleteText="Usuń towar" EditText="Zmień ilość" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Aktualizuj" CausesValidation="False" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="kasaButton" runat="server" PostBackUrl="~/Zamowienie.aspx" Text="Do kasy" />
</asp:Content>
