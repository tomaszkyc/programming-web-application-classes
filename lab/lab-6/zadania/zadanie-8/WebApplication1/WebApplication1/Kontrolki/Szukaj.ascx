<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Szukaj.ascx.cs" Inherits="WebApplication1.Kontrolki.Szukaj" %>
<p>
    Podaj nazwę produktu: <asp:TextBox ID="nazwaTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="NazwaRequiredFieldValidator" runat="server" ControlToValidate="nazwaTextBox" ErrorMessage="Podaj fragment nazwy produktu">*</asp:RequiredFieldValidator>
</p>
<p>
     <asp:Button ID="szukajButton" runat="server" OnClick="szukajButton_Click" Text="Szukaj" />
</p>

