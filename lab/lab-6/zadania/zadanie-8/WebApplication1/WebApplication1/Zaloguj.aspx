<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Zaloguj.aspx.cs" Inherits="WebApplication1.Zaloguj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Zaloguj się w serwisie</p>
    <p>
        <asp:Login ID="Login1" runat="server" FailureText="Logowanie nie powiodło się. Upewnij się, że poprawnie wpisałeś nazwę użytkownika i hasło." LoginButtonText="Zaloguj" PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Wprowadź hasło." RememberMeText="Zapamiętaj mnie" UserNameLabelText="Login:" UserNameRequiredErrorMessage="Wprowadź nazwę." TitleText="Wpisz poniżej dane do logowania">
        </asp:Login>
        <a href="Odzyskiwanie.aspx">Zapomniałem hasła</a>
    </p>
</asp:Content>
