using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WebApplication1.App_Code
{
    public class ElementKoszyka
    {


        


        public string Nazwa { get; set; }
        public int ProdID { get; set; }
        public decimal Cena { get; set; }
        public int IloscSztuk { get; set; }
        public decimal Suma { get { return Cena * IloscSztuk; } }



        public ElementKoszyka()
        {

            ProdID = 0;
            Nazwa = "";
            Cena = 0;
            IloscSztuk = 0;
        }

        public ElementKoszyka(int prodID, string nazwa, decimal cena, int iloscSztuk)
        {
            ProdID = prodID;
            Nazwa = nazwa;
            Cena = cena;
            IloscSztuk = iloscSztuk;
        }
    }
}