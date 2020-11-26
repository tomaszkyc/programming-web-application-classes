<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ankieta.aspx.cs" Inherits="Ankieta" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" 
            AdvertisementFile="~/Adv/adv.xml" />
			<br />
        <asp:MultiView ID="mainMultiView" runat="server" >
        
            <asp:View ID="ankietaGlowna" runat="server">
                Imiê:
                <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imieTextBox"
                    ErrorMessage="Pole Imiê jest wymagane">*</asp:RequiredFieldValidator><br />
            P³eæ:
                <asp:DropDownList ID="plecDropDownList" runat="server">
                    <asp:ListItem Value="K">Kobieta</asp:ListItem>
                    <asp:ListItem Value="M">Mê¿czyzna</asp:ListItem>
                    <asp:ListItem Selected="True" Value="N">Nie podajê</asp:ListItem>
                </asp:DropDownList><br />
                e-mail:
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Pole e-mail jest wymagane">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="emailTextBox" ErrorMessage="Nieprawid³owy adres e-mail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                telefon:
                <asp:TextBox ID="telTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="telTextBox" 
                    ErrorMessage="Nieprawid³owy numer telefonu - podaj same cyfry" 
                    ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                <br />
                ulica:
                <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox><br />
                numer domu
                <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox><br />
                numer mieszkania:
                <asp:TextBox ID="mieszTextBox" runat="server"></asp:TextBox><br />
                kod pocztowy:
                <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox><br />
                miejscowoœæ:
                <asp:TextBox ID="miejscTextBox" runat="server"></asp:TextBox><br />
                <asp:MultiView ID="ankietaMultiView" runat="server">
                    <asp:View ID="nowyView" runat="server">
                        Wzrost:
                        <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="wzrostTextBox" 
                            ErrorMessage="Nieprawid³owy wzrost - podaj wzrost w cm" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="wzrostTextBox" ErrorMessage="Wzrost niepoprawny" 
                            MaximumValue="250" MinimumValue="50" Type="Integer">*</asp:RangeValidator>
                        <br />
                        Rama roweru:
                        <asp:DropDownList ID="ramaDropDownList" runat="server">
                            <asp:ListItem Value="D">Damska</asp:ListItem>
                            <asp:ListItem Value="M">Mêska</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Bez znaczenia</asp:ListItem>
                        </asp:DropDownList><br />
                        Marka:
                        <asp:ListBox ID="markaListBox" runat="server">
                            <asp:ListItem Value="C">Cateye</asp:ListItem>
                            <asp:ListItem Value="G">Giant</asp:ListItem>
                            <asp:ListItem Value="Ke">Kenda</asp:ListItem>
                            <asp:ListItem Value="Kr">Kross</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Bez znaczenia</asp:ListItem>
                        </asp:ListBox><br />
                        Rodzaj roweru:
                        <asp:ListBox ID="rodzajListBox" runat="server">
                            <asp:ListItem Value="G">G&#243;rski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dzieciêcy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                        </asp:ListBox><br />
                        Kwota planowanych wydatków:
                        <asp:RadioButtonList ID="cenaRadioButtonList" runat="server">
                            <asp:ListItem Selected="True" Value="0">Nie ma znaczenia</asp:ListItem>
                            <asp:ListItem Value="5">do 500 z³</asp:ListItem>
                            <asp:ListItem Value="10">500 - 1000 z³</asp:ListItem>
                            <asp:ListItem Value="15">1000 - 1500 z³</asp:ListItem>
                            <asp:ListItem Value="20">pow. 1500</asp:ListItem>
                            <asp:ListItem Value="1">Zakres</asp:ListItem>
                        </asp:RadioButtonList>od
                        <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="odTextBox" 
                            ErrorMessage="Nieprawid³owa kwota - podaj zaokr¹glaj¹c do pe³nych z³otych" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        do
                        <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="doTextBox" 
                            ErrorMessage="Nieprawid³owa kwota - podaj zaokr¹glaj¹c do pe³nych z³otych" 
                            ValidationExpression="([0-9]+)$">*</asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="odTextBox" ControlToValidate="doTextBox" 
                            ErrorMessage="do musi byæ wiêksze" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>
                        <br />
                    </asp:View>
                    <asp:View ID="wycieczkiView" runat="server">
                        Rodzaj posiadanego roweru:
                        <asp:ListBox ID="posiadaListBox" runat="server">
                            <asp:ListItem Value="G">G&#243;rski</asp:ListItem>
                            <asp:ListItem Value="M">Miejski</asp:ListItem>
                            <asp:ListItem Value="S">Szosowy</asp:ListItem>
                            <asp:ListItem Value="B">BMX</asp:ListItem>
                            <asp:ListItem Value="D">Dzieciêcy</asp:ListItem>
                            <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                        </asp:ListBox><br />
                        Data ostatniej wycieczki:<asp:Calendar ID="ostatniaCalendar" runat="server" 
                            onselectionchanged="ostatniaCalendar_SelectionChanged">
                        </asp:Calendar>
                        Data nastêpnej wycieczki:
                        <asp:Calendar ID="nastepnaCalendar" runat="server" 
                            OnSelectionChanged="nastepnaCalendar_SelectionChanged"></asp:Calendar>
                        Iloœæ kilometrów œrednio na jednej wycieczce:
                        <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox><br />
                        Poziom umiejêtnoœci:
                        <asp:DropDownList ID="poziomDropDownList" runat="server">
                            <asp:ListItem Value="P">Pocz¹tkuj¹cy</asp:ListItem>
                            <asp:ListItem Value="S">Œredniozaawansowany</asp:ListItem>
                            <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                        </asp:DropDownList></asp:View>
                </asp:MultiView>Preferowany rodzaj kontaktu:
                <asp:CheckBoxList ID="kontaktCheckBoxList" runat="server">
                    <asp:ListItem Value="E">E-mail</asp:ListItem>
                    <asp:ListItem Value="T">Telefon</asp:ListItem>
                    <asp:ListItem Value="O">Osobisty</asp:ListItem>
                </asp:CheckBoxList><br />
                <asp:Button ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="Wyœlij" /></asp:View>
            &nbsp;
            <asp:View ID="podsumowanie" runat="server">
                Dziêkujemy za wype³nienie ankiety <a href="Default.aspx">Default.aspx</a><br />
                Podane imiê:
                <asp:Label ID="imieLabel" runat="server"></asp:Label>
                <br />
                Podany adres e-mail:
                <asp:Label ID="emailLabel" runat="server"></asp:Label>
            </asp:View>
        </asp:MultiView></div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
