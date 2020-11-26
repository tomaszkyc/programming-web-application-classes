<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeFile="Odzyskiwanie.aspx.cs" Inherits="WebApplication1.Odzyskiwanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerLabelText="Odpowiedź:" AnswerRequiredErrorMessage="Odpowiedź jest wymagana." GeneralFailureText="Próba odzyskania hasła nie powiodła się. Spróbuj ponownie później." QuestionFailureText="Odpowiedź nie może być zweryfikowana. Spróbuj ponownie później." QuestionInstructionText="Odpowiedz na poniższe pytanie, aby odzyskać hasło." QuestionLabelText="Pytanie:" QuestionTitleText="Potwierdzenie tożsamości" SubmitButtonText="Wyślij" SuccessText="Twoje hasło zostało wysłane na adres email." UserNameFailureText="Wystąpił problem podczas uzyskiwania danych z serwera. Spróbuj ponownie później." UserNameInstructionText="Wpisz login, aby odzyskać hasło." UserNameLabelText="Login:" UserNameRequiredErrorMessage="Login jest wymagany." UserNameTitleText="Zapomniałeś hasła?">
    </asp:PasswordRecovery>
</asp:Content>
