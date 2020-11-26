<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ankieta.aspx.cs" Inherits="Zadanie_1.Ankieta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Adv/adv.xml" />
        <br />
        <asp:MultiView ID="mainMultiView" runat="server" OnActiveViewChanged="mainMultiView_ActiveViewChanged">
            <asp:View ID="ankietaGlowna" runat="server">
                Imie:
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imieTextBox" ErrorMessage="Pole imie jest wymagane">*</asp:RequiredFieldValidator>
                <br />
                Plec:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="K">Kobieta</asp:ListItem>
                    <asp:ListItem Value="M">Mezczyzna</asp:ListItem>
                    <asp:ListItem Selected="True" Value="N">Nie podaje</asp:ListItem>
                </asp:DropDownList>
                <br />
                E-mail:
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Pole E-mail jest wymagane">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Nieprawidłowy adres E-Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                Telefon:
                <asp:TextBox ID="telTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="telTextBox" ErrorMessage="Nieprawidłowy numer telefonu podaj same cyfry" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                <br />
                Ulica:
                <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                <br />
                Numer domu:
                <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox>
                <br />
                Numer mieszkania:
                <asp:TextBox ID="mieszTextBox" runat="server"></asp:TextBox>
                <br />
                Kod pocztowy:
                <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox>
                <br />
                Miejscowosc:
                <asp:TextBox ID="miejscTextBox" runat="server"></asp:TextBox>
                <asp:MultiView ID="ankietaMultiView" runat="server">
                    <asp:View ID="nowyView" runat="server">
                        Wzrost:
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Nieprawidłowy wzrost - podaj wzrost w centrymetrach" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="wzrostTextBox" ErrorMessage="Podaj poprawny wzrost w zakresie od 50 do 250 cm" MaximumValue="250" MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                        <br />
                        Rama roweru:
                        <asp:DropDownList ID="ramaDropDownList" runat="server">
                            <asp:ListItem Value="D">Damska</asp:ListItem>
                            <asp:ListItem Value="M">Meska</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie ma znaczenia</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Marka:
                        <asp:ListBox ID="markaListBox" runat="server">
                            <asp:ListItem Value="C">Cateye</asp:ListItem>
                            <asp:ListItem Value="G">Giant</asp:ListItem>
                            <asp:ListItem Value="Ke">Kenda</asp:ListItem>
                            <asp:ListItem Value="Kr">Kross</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie ma znaczenia</asp:ListItem>
                        </asp:ListBox>
                        <br />
                        Rodzaj roweru:
                        <asp:ListBox ID="rodzajListBox" runat="server">
                            <asp:ListItem Value="G">Górski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dzieciecy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                        </asp:ListBox>
                        <br />
                        Kwota planowanych wydatków:<asp:RadioButtonList ID="cenaRadioButtonList" runat="server" OnSelectedIndexChanged="cenaRadioButtonList_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="0">Nie ma znaczenia</asp:ListItem>
                            <asp:ListItem Value="5">do 500 zl</asp:ListItem>
                            <asp:ListItem Value="10">500 - 1000 zl</asp:ListItem>
                            <asp:ListItem Value="15">1000 - 1500 zl</asp:ListItem>
                            <asp:ListItem Value="20">pow. 1500 zl</asp:ListItem>
                            <asp:ListItem Value="1">Zakres:</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        od:&nbsp;
                        <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="odTextBox" ErrorMessage="Niepoprawna kwota - podaj zaokrąglając do pełnych złotych" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do:
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="doTextBox" ErrorMessage="Nieprawidłowa kwota - podaj zaokrąglając do pełnych złotych" ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="odTextBox" ControlToValidate="doTextBox" ErrorMessage="Wartość w polu Do musi być większa od wartości w polu Od" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>
                    </asp:View>
                    <asp:View ID="wycieczkiView" runat="server">
                        Rodzaj posiadanego roweru:<br />&nbsp;
                        <asp:ListBox ID="ListBox1" runat="server">
                            <asp:ListItem Value="G">Górski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dzieciecy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                        </asp:ListBox>
                        <br />
                        Data ostatniej wycieczki:<asp:Calendar ID="ostatniaCalendar" runat="server"></asp:Calendar>
                        <br />
                        Data nastepnej wycieczki:&nbsp;
                        <asp:Calendar ID="nastepnaCalendar" runat="server"></asp:Calendar>
                        <br />
                        Ilosc kilometrow srednio na jednej wycieczce:
                        <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                        <br />
                        Poziom umiejetnosci:<asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="P">Poczatkujacy</asp:ListItem>
                            <asp:ListItem Value="S">Średniozaawansowany</asp:ListItem>
                            <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                        </asp:DropDownList>
                    </asp:View>
                </asp:MultiView>
                        <p>
            Preferowany rodzaj kontaktu:</p>
        <asp:CheckBoxList ID="kontaktCheckBoxList" runat="server">
            <asp:ListItem Value="E">E-mail</asp:ListItem>
            <asp:ListItem Value="T">Telefon</asp:ListItem>
            <asp:ListItem Value="O">Osobisty</asp:ListItem>
        </asp:CheckBoxList>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" />
        <asp:Button ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="Wyślij" />
            </asp:View>
            <br />
            <asp:View ID="podsumowanie" runat="server">
                Dziękujemy za wypełnienie ankiety.
                <asp:HyperLink ID="stronaGlownaHyperLink" runat="server" NavigateUrl="~/Default.aspx">Kliknij tutaj aby powrócić do strony głównej</asp:HyperLink>
            </asp:View>
        </asp:MultiView>

    </form>
</body>
</html>
