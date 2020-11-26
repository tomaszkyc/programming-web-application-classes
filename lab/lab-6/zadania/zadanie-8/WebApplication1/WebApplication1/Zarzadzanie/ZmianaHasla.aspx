<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="ZmianaHasla.aspx.cs" Inherits="WebApplication1.Zarzadzanie.ZmianaHasla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" CancelButtonText="Anuluj" ChangePasswordButtonText="Zmień hasło" ChangePasswordFailureText="Hasło lub nowe hasło jest niepoprawne. Minimalna długość nowego hasła: {0}. Wymagana minimalna ilość cyfr: {1}." ChangePasswordTitleText="Zmień hasło" ConfirmNewPasswordLabelText="Potwierdź nowe hasło" ConfirmPasswordCompareErrorMessage="Potwierdzenie nowego hasła musi być takie same jak nowe hasło" ConfirmPasswordRequiredErrorMessage="Potwierdzenie nowego hasła jest wymagane." ContinueButtonText="Kontynuuj" NewPasswordLabelText="Nowe hasło:" NewPasswordRegularExpressionErrorMessage="Wpisz inne hasło." NewPasswordRequiredErrorMessage="Nowe hasło jest wymagane." PasswordLabelText="Hasło:" PasswordRequiredErrorMessage="Hasło jest wymagane." SuccessText="Twoje hasło zostało zmienione" SuccessTitleText="Hasło zmienione pomyślnie" UserNameLabelText="Login:" UserNameRequiredErrorMessage="Login jest wymagany.">
    </asp:ChangePassword>
</asp:Content>
