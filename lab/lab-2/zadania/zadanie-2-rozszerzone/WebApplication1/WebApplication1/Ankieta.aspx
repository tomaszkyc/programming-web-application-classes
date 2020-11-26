<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ankieta.aspx.cs" Inherits="WebApplication1.Ankieta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ankieta</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group pl-3 ">
            <asp:MultiView ID="mainMultiView" runat="server" OnActiveViewChanged="mainMultiView_ActiveViewChanged">
                <asp:View ID="ankietaGlowna" runat="server">
                    Imię:
                    <asp:TextBox CssClass="m-1" ID="imieTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imieTextBox" ErrorMessage="Pole &quot;Imię&quot; jest wymagane">*</asp:RequiredFieldValidator>
                    <br />
                    Adres e-mail:
                    <asp:TextBox CssClass="m-1" ID="emailTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Wpisz poprawny adres e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Pole &quot;Adres e-mail&quot; jest wymagane">*</asp:RequiredFieldValidator>
                    <br />
                    Kod pocztowy:
                    <asp:TextBox CssClass="m-1" ID="kodPocztowyTextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="kodPocztowyTextBox" ErrorMessage="Wpisz kod pocztowy w poprawnym formacie" ValidationExpression="\d{2}-\d{3}">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="kodPocztowyTextBox" ErrorMessage="Pole &quot;Kod pocztowy&quot; jet wymagane">*</asp:RequiredFieldValidator>
                    <br />
                    Wiek:
                    <asp:TextBox CssClass="m-1" ID="wiekTextBox" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="wiekTextBox" ErrorMessage="Wpisz wiek w przedziale 10 - 100" MaximumValue="100" MinimumValue="10" Type="Integer">*</asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="wiekTextBox" ErrorMessage="Pole &quot;Wiek&quot; jest wymagane">*</asp:RequiredFieldValidator>
                    <br />
                    Płeć:
                    <asp:DropDownList CssClass="m-1" ID="plecDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="plecDropDownList_SelectedIndexChanged">
                        <asp:ListItem Value="K">Kobieta</asp:ListItem>
                        <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
                        <asp:ListItem Selected="True" Value="N">Nie podaję</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Wykształcenie:
                    <asp:DropDownList CssClass="m-1" ID="wyksztalcenieDropDownList" runat="server">
                        <asp:ListItem Value="Podstawowe">Podstawowe</asp:ListItem>
                        <asp:ListItem>Gimnazjalne</asp:ListItem>
                        <asp:ListItem>Zawodowe</asp:ListItem>
                        <asp:ListItem>Średnie</asp:ListItem>
                        <asp:ListItem>Wyższe</asp:ListItem>
                        <asp:ListItem Selected="True">Nie podaję</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Rozmiar:
                    <asp:TextBox CssClass="m-1" ID="rozmiarTextBox" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="rozmiarTextBox" ErrorMessage="Podaj rozmiar w przedziale 20 - 50" MaximumValue="50" MinimumValue="20" Type="Integer">*</asp:RangeValidator>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rozmiarTextBox" ErrorMessage="Pole &quot;Rozmiar&quot; jest wymagane">*</asp:RequiredFieldValidator>
                    <br />
                   
                    <asp:MultiView ID="klienciMultiView" runat="server">

                    <asp:View ID="nowiKlienciView" runat="server">
                            Ile jesteś w stanie przeznaczyć miesięcznie na zakup ubrania?
                            <asp:DropDownList CssClass="m-1" ID="mscKwotaDropDownList" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="100" Selected="True">do 100 zł</asp:ListItem>
                                <asp:ListItem Value="500">100-500 zł</asp:ListItem>
                                <asp:ListItem Value="1000">500-1000 zł</asp:ListItem>
                                <asp:ListItem Value="&gt;1000">powyżej 1000zł</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            Gdzie najczęściej dokonujesz zakupów ubrania?
                            <asp:CheckBoxList CssClass="m-1" ID="nowyKlientNajczestszeMiejsceZakCheckBoxList" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="SF">Sklep firmowy</asp:ListItem>
                                <asp:ListItem Value="H">Hipermarket</asp:ListItem>
                                <asp:ListItem Value="B">Bazar</asp:ListItem>
                                <asp:ListItem Value="SOU">Sklep z odzieżą używaną</asp:ListItem>
                            </asp:CheckBoxList>
                            <br />
                            Jak często dokonujesz zakupu ubrania?
                            <asp:DropDownList CssClass="m-1" ID="czestZakupowDropDownList" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="C" Selected="True">Codziennie</asp:ListItem>
                                <asp:ListItem Value="T">Raz w tygodniu</asp:ListItem>
                                <asp:ListItem Value="M">Raz w miesiącu</asp:ListItem>
                                <asp:ListItem Value="R">Kilka razy w roku</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            W jakich kolorach preferujesz ubrania?
                            <asp:CheckBoxList CssClass="m-1" ID="nowiKlienciPrefKolorCheckBoxList" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="KJ">Kolorowo-jaskrawych</asp:ListItem>
                                <asp:ListItem Value="SWS">Stonowanych w szarościach</asp:ListItem>
                                <asp:ListItem Value="WCB">W czerni i bieli</asp:ListItem>
                                <asp:ListItem Value="WSC">W samej czerni</asp:ListItem>
                            </asp:CheckBoxList>
                            <br />
                            <asp:MultiView ID="dodatkowePytaniaPlecMultiView" runat="server">
                                <asp:View ID="dodatkowePytaniaKobietaView" runat="server">
                                    Jakiego rodzaju ubrania najchętniej kupujesz?<asp:CheckBoxList CssClass="m-1" ID="kobietaNajchetniejKupowaneCheckBoxList" runat="server" AutoPostBack="True">
                                        <asp:ListItem>garsonki</asp:ListItem>
                                        <asp:ListItem>bluzki</asp:ListItem>
                                        <asp:ListItem Value="spódniczki">spódniczki</asp:ListItem>
                                        <asp:ListItem>spodnie</asp:ListItem>
                                    </asp:CheckBoxList>
                                </asp:View>
                                <asp:View ID="dodatkowePytaniaMezczyznaView" runat="server">
                                    Jakiego rodzaju ubrania najchętniej kupujesz?<asp:CheckBoxList CssClass="m-1" ID="mezczyznaNajchetniejKupowaneCheckBoxList" runat="server" AutoPostBack="True">
                                        <asp:ListItem>spodnie</asp:ListItem>
                                        <asp:ListItem>spodenki</asp:ListItem>
                                        <asp:ListItem>garnitury</asp:ListItem>
                                        <asp:ListItem>koszule</asp:ListItem>
                                        <asp:ListItem>krawaty</asp:ListItem>
                                    </asp:CheckBoxList>
                                </asp:View>
                            </asp:MultiView>

                    </asp:View>
                    <asp:View ID="aktualniKlienciView" runat="server">
                        <asp:MultiView ID="aktualniKlienciPytaniaMultiView" runat="server">
                            <asp:View ID="aktualniKlienciPytaniaKobietyView" runat="server">
                                Kiedy ostatnio robiłaś u nas zakupy?<asp:CheckBoxList CssClass="m-1" ID="aktualniKlienciPytaniaKobietyOstZakCheckBoxList" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="w">Wczoraj</asp:ListItem>
                                    <asp:ListItem Value="wzt">W zeszłym tygodniu</asp:ListItem>
                                    <asp:ListItem Value="wzm">W zeszłym miesiącu</asp:ListItem>
                                    <asp:ListItem Value="kmt">Kilka miesięcy temu</asp:ListItem>
                                    <asp:ListItem Value="np">Nie pamiętam</asp:ListItem>
                                </asp:CheckBoxList>
                                <br />
                                Czy jesteś zadowolona z zakupu?<asp:DropDownList CssClass="m-1" ID="aktualniKlienciPytaniaKobietyZadZakDropDownList" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="t" Selected="True">Tak</asp:ListItem>
                                    <asp:ListItem Value="rt">Raczej tak</asp:ListItem>
                                    <asp:ListItem Value="rn">Raczej nie</asp:ListItem>
                                    <asp:ListItem Value="n">Nie</asp:ListItem>
                                    <asp:ListItem Value="nw">Nie wiem</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                Czy jestes zadowolona z naszych pracowników<asp:DropDownList CssClass="m-1" ID="aktualniKlienciKobietaZadPracDropDownList" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="t" Selected="True">Tak</asp:ListItem>
                                    <asp:ListItem Value="rt">Raczej tak</asp:ListItem>
                                    <asp:ListItem Value="rn">Raczej nie</asp:ListItem>
                                    <asp:ListItem Value="n">Nie</asp:ListItem>
                                    <asp:ListItem Value="nw">Nie wiem</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                Wpisz swoje uwagi:<asp:TextBox CssClass="m-1" ID="aktualniKlienciPytaniaKobietyUwagiTextBox" runat="server" Height="93px" TextMode="MultiLine" Width="333px"></asp:TextBox>
                            </asp:View>
                            <asp:View ID="aktualniKlienciPytaniaMezczyzniView" runat="server">
                                Kiedy ostatnio robiłeś u nas zakupy?<asp:CheckBoxList CssClass="m-1" ID="aktualniKlienciPytaniaMezczyzniOstZakCheckBoxList" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="w">Wczoraj</asp:ListItem>
                                    <asp:ListItem Value="wzt">W zeszłym tygodniu</asp:ListItem>
                                    <asp:ListItem Value="wzm">W zeszłym miesiącu</asp:ListItem>
                                    <asp:ListItem Value="kmt">Kilka miesięcy temu</asp:ListItem>
                                    <asp:ListItem Value="np">Nie pamiętam</asp:ListItem>
                                </asp:CheckBoxList>
                                <br />
                                Czy jesteś zadowolona z zakupu?<asp:DropDownList CssClass="m-1" ID="aktualniKlienciPytaniaMezczyzniZadZakDropDownList" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="t" Selected="True">Tak</asp:ListItem>
                                    <asp:ListItem Value="rt">Raczej tak</asp:ListItem>
                                    <asp:ListItem Value="rn">Raczej nie</asp:ListItem>
                                    <asp:ListItem Value="n">Nie</asp:ListItem>
                                    <asp:ListItem Value="nw">Nie wiem</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                Czy jestes zadowolona z naszych pracowników<asp:DropDownList CssClass="m-1" ID="aktualniKlienciMezczyzniZadPracDropDownList" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="t" Selected="True">Tak</asp:ListItem>
                                    <asp:ListItem Value="rt">Raczej tak</asp:ListItem>
                                    <asp:ListItem Value="rn">Raczej nie</asp:ListItem>
                                    <asp:ListItem Value="n">Nie</asp:ListItem>
                                    <asp:ListItem Value="nw">Nie wiem</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                Wpisz swoje uwagi:
                                <br />
                                <asp:TextBox CssClass="m-1" ID="aktualniKlienciPytaniaMezczyzniUwagiTextBox" runat="server" Height="100px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                       
                            </asp:View>
                         </asp:MultiView>
                    </asp:View>

                    </asp:MultiView>
                    <br />
                    <br />
                    <asp:Button CssClass="btn btn-primary" ID="wyslijButton" runat="server" OnClick="wyslijButton_Click" Text="Wyślij" />
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </asp:View>

                <asp:View ID="podsumowanie" runat="server">
                    <h4>Dziękujemy za wypełnienie ankiety. Poniżej podane przez Ciebie informacje:</h4>
                    Imię:
                    <asp:Label CssClass="m-1" ID="imieLbl" runat="server" Text=""></asp:Label>
                    <br />
                    Adres e-mail:
                    <asp:Label CssClass="m-1" ID="emailLbl" runat="server" Text=""></asp:Label>
                    <br />
                    Kod pocztowy:
                    <asp:Label CssClass="m-1" ID="kodLbl" runat="server" Text=""></asp:Label>
                    <br />
                    Wiek:
                    <asp:Label CssClass="m-1" ID="wiekLbl" runat="server" Text=""></asp:Label>
                    <br />
                    Płeć:
                    <asp:Label CssClass="m-1" ID="plecLbl" runat="server" Text=""></asp:Label>
                    <br />
                    Wykształcenie:
                    <asp:Label CssClass="m-1" ID="wyksztalcenieLbl" runat="server" Text=""></asp:Label>
                    <br />
                    Rozmiar:
                    <asp:Label CssClass="m-1" ID="rozmiarLbl" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:MultiView ID="podsumowanieDodatkoweInformacjeMultiView" runat="server">
                        <asp:View ID="podsumowanieDodatkoweInfNowiKlienciView" runat="server">
                        <asp:Label CssClass="" ID="nowiKlienciZakresFinMscTextLbl" runat="server" Text="Ile jesteś w stanie przeznaczyć miesięcznie na zakup ubrania?"></asp:Label>
                        <asp:Label CssClass="m-1" ID="nowiKlienciZakresFinMscLbl" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label CssClass="" ID="nowiKlienciMiejsceZakTextLbl" runat="server" Text="Gdzie najczęściej dokonujesz zakupów ubrania?"></asp:Label>
                        <asp:Label CssClass="m-1" ID="nowiKlienciMiejsceZakLbl" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label CssClass="" ID="nowiKlienciCzestotliwoscTextLbl" runat="server" Text="Jak często dokonujesz zakupu ubrania?"></asp:Label>
                        <asp:Label CssClass="m-1" ID="nowiKlienciCzestotliwoscLbl" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label CssClass="" ID="nowiKlienciKoloryPrefTextLbl" runat="server" Text="W jakich kolorach preferujesz ubrania?"></asp:Label>
                        <asp:Label CssClass="m-1" ID="nowiKlienciKoloryPrefLbl" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label CssClass="" ID="nowiKlienciDodatkowePyt1TextLbl" runat="server" Text="Jakiego rodzaju ubrania najchętniej kupujesz?"></asp:Label>
                        <asp:Label CssClass="m-1" ID="nowiKlienciDodatkowePyt1Lbl" runat="server" Text=""></asp:Label>
                        </asp:View>
                        <asp:View ID="podsumowanieDodatkoweInfAktualniKlienciView" runat="server">
                            <asp:Label CssClass="" ID="aktualniKlienciOstatZakTextLbl" runat="server" Text=""></asp:Label>
                            <asp:Label CssClass="" ID="aktualniKlienciOstatZakValueLbl" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label CssClass="" ID="aktualniKlienciZadowolenieTextLbl" runat="server" Text=""></asp:Label>
                            <asp:Label CssClass="" ID="aktualniKlienciZadowolenieValueLbl" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label CssClass="" ID="aktualniKlienciZadowoleniePracTextLbl" runat="server" Text=""></asp:Label>
                            <asp:Label CssClass="m-1" ID="aktualniKlienciZadowoleniePracValueLbl" runat="server" Text=""></asp:Label>
                            <br />
                            Uwagi:
                            <br />
                            <asp:TextBox CssClass="m-1" ID="podsumowanieAktualniKlienciUwagiTextBox" runat="server" Height="100px" TextMode="MultiLine" Width="320px" Enabled="false"></asp:TextBox>
                        </asp:View>
                    </asp:MultiView>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
