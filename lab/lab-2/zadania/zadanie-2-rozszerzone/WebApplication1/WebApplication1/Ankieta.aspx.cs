using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ankieta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Console.WriteLine("Page_Load !");
            if (!IsPostBack)
            {
                mainMultiView.SetActiveView(ankietaGlowna);

                if (Request.QueryString["view"] == "nowy")
                {
                    klienciMultiView.SetActiveView(nowiKlienciView);
                }
                else if (Request.QueryString["view"] == "aktualny")
                {
                    klienciMultiView.SetActiveView(aktualniKlienciView);
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
        }

        protected void mainMultiView_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void plecDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var plecValue = plecDropDownList.SelectedValue;
            if (plecValue == "K")
            {

                if (klienciMultiView.GetActiveView().Equals( nowiKlienciView ))
                {
                    
                    dodatkowePytaniaPlecMultiView.Visible = true;
                    dodatkowePytaniaPlecMultiView.SetActiveView(dodatkowePytaniaKobietaView);
                }
                else if (klienciMultiView.GetActiveView().Equals(aktualniKlienciView))
                {
                    aktualniKlienciPytaniaMultiView.Visible = true;
                    aktualniKlienciPytaniaMultiView.SetActiveView(aktualniKlienciPytaniaKobietyView);
                }
                



            }
            else if (plecValue == "M")
            {
                if (klienciMultiView.GetActiveView().Equals(nowiKlienciView))
                {

                    dodatkowePytaniaPlecMultiView.Visible = true;
                    dodatkowePytaniaPlecMultiView.SetActiveView(dodatkowePytaniaMezczyznaView);
                }
                else if (klienciMultiView.GetActiveView().Equals(aktualniKlienciView))
                {
                    aktualniKlienciPytaniaMultiView.Visible = true;
                    aktualniKlienciPytaniaMultiView.SetActiveView(aktualniKlienciPytaniaMezczyzniView);
                }
            }
            else
            {
                if (klienciMultiView.GetActiveView().Equals(nowiKlienciView))
                {

                    dodatkowePytaniaPlecMultiView.Visible = false;
                }
                else if (klienciMultiView.GetActiveView().Equals(aktualniKlienciView))
                {
                    aktualniKlienciPytaniaMultiView.Visible = false;
                }
            }

        }

        protected void wyslijButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                setGlobalDataForPodsumowanieView();
                setCustomDataForActualClientType();

                //nowi klienci
                if (klienciMultiView.GetActiveView().Equals(nowiKlienciView))
                {
                    podsumowanieDodatkoweInformacjeMultiView.SetActiveView(podsumowanieDodatkoweInfNowiKlienciView);
                }
                //aktualni klienci
                else if (klienciMultiView.GetActiveView().Equals(aktualniKlienciView))
                {
                    podsumowanieDodatkoweInformacjeMultiView.SetActiveView(podsumowanieDodatkoweInfAktualniKlienciView);
                }

                mainMultiView.SetActiveView(podsumowanie);
            }
        }

        private void setGlobalDataForPodsumowanieView()
        {
            imieLbl.Text = getValueForRequestKey("imieTextBox");
            emailLbl.Text = getValueForRequestKey("emailTextBox");
            kodLbl.Text = getValueForRequestKey("kodPocztowyTextBox");
            wiekLbl.Text = getValueForRequestKey("wiekTextBox");
            plecLbl.Text = getSelectedValueFromDropDownList(plecDropDownList);
            wyksztalcenieLbl.Text = getSelectedValueFromDropDownList(wyksztalcenieDropDownList);
            rozmiarLbl.Text = getValueForRequestKey("rozmiarTextBox");
        }

        private void setCustomDataForActualClientType()
        {

            //nowi klienci
            if (klienciMultiView.GetActiveView().Equals(nowiKlienciView))
            {
                setCustomDataForNewClients();
            }
            //aktualni klienci
            else if (klienciMultiView.GetActiveView().Equals(aktualniKlienciView))
            {
                setCustomDataForActualClients();

            }



        }

        /**
         * funkcja odpowiada za ustawienie dodatkowych danych dla aktualnego klienta
         **/
        private void setCustomDataForActualClients()
        {
            var plecValue = plecDropDownList.SelectedValue;
            if (plecValue == "K")
            {
                aktualniKlienciOstatZakTextLbl.Text = "Kiedy ostatnio robiłaś u nas zakupy?";
                aktualniKlienciOstatZakValueLbl.Text = getSelectedValuesFromCheckboxList(aktualniKlienciPytaniaKobietyOstZakCheckBoxList);

                aktualniKlienciZadowolenieTextLbl.Text = "Czy jesteś zadowolona z zakupu?";
                aktualniKlienciZadowolenieValueLbl.Text = getSelectedValueFromDropDownList(aktualniKlienciPytaniaKobietyZadZakDropDownList);

                aktualniKlienciZadowoleniePracTextLbl.Text = "Czy jestes zadowolona z naszych pracowników";
                aktualniKlienciZadowoleniePracValueLbl.Text = getSelectedValueFromDropDownList(aktualniKlienciKobietaZadPracDropDownList);

                podsumowanieAktualniKlienciUwagiTextBox.Text = aktualniKlienciPytaniaKobietyUwagiTextBox.Text;

            }
            else if (plecValue == "M")
            {
                aktualniKlienciOstatZakTextLbl.Text = "Kiedy ostatnio robiłeś u nas zakupy?";
                aktualniKlienciOstatZakValueLbl.Text = getSelectedValuesFromCheckboxList(aktualniKlienciPytaniaMezczyzniOstZakCheckBoxList);

                aktualniKlienciZadowolenieTextLbl.Text = "Czy jesteś zadowolony z zakupu?";
                aktualniKlienciZadowolenieValueLbl.Text = getSelectedValueFromDropDownList(aktualniKlienciPytaniaMezczyzniZadZakDropDownList);

                aktualniKlienciZadowoleniePracTextLbl.Text = "Czy jestes zadowolony z naszych pracowników?";
                aktualniKlienciZadowoleniePracValueLbl.Text = getSelectedValueFromDropDownList(aktualniKlienciMezczyzniZadPracDropDownList);

                podsumowanieAktualniKlienciUwagiTextBox.Text = aktualniKlienciPytaniaMezczyzniUwagiTextBox.Text;
            }


        }

        /**
         * funkcja odpowiada za ustawienie dodatkowych danych dla nowego klienta
         **/
        private void setCustomDataForNewClients()
        {
            nowiKlienciZakresFinMscLbl.Text = getSelectedValueFromDropDownList(mscKwotaDropDownList);
            nowiKlienciMiejsceZakLbl.Text = getSelectedValuesFromCheckboxList(nowyKlientNajczestszeMiejsceZakCheckBoxList);
            nowiKlienciCzestotliwoscLbl.Text = getSelectedValueFromDropDownList(czestZakupowDropDownList);
            nowiKlienciKoloryPrefLbl.Text = getSelectedValuesFromCheckboxList(nowiKlienciPrefKolorCheckBoxList);

            var plecValue = plecDropDownList.SelectedValue;
            if (plecValue == "K")
            {
                nowiKlienciDodatkowePyt1Lbl.Text = getSelectedValuesFromCheckboxList(kobietaNajchetniejKupowaneCheckBoxList);
            }
            else if ( plecValue == "M" )
            {
                nowiKlienciDodatkowePyt1Lbl.Text = getSelectedValuesFromCheckboxList(mezczyznaNajchetniejKupowaneCheckBoxList);
            }



        }

        private String getSelectedValueFromDropDownList(DropDownList dropDownList)
        {
            return dropDownList.SelectedItem.Text;
        } 

        private String getSelectedValuesFromCheckboxList(CheckBoxList checkBoxList)
        {
            
            List<String> selectedValues = checkBoxList.Items.Cast<ListItem>()
                       .Where(li => li.Selected)
                       .Select(li => li.Text)
                       .ToList();
            Debug.WriteLine("Inside getSelectedValuesFromCheckboxList");
            //jeśli lista posiada wartości 
            if (selectedValues.Count() > 0)
            {
                return String.Join(", ", selectedValues.ToArray());
            }
            //jeśli pusta lista
            else
            {
                return "";
            }

            

        }

        private String getValueForRequestKey(String requestKey)
        {

            return Request.Form[requestKey].ToString();
        }

        private void hideLabel(Label label)
        {
            label.Visible = false;
        }

    }
}