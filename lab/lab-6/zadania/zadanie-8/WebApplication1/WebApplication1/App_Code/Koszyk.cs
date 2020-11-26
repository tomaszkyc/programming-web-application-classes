using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WebApplication1.App_Code
{
    public class Koszyk
    {
        private List<ElementKoszyka> _koszyk;
        public int Ilosc { get { return _koszyk.Count; } }


        public Koszyk()
        {
            _koszyk = new List<ElementKoszyka>();
        }


        public List<ElementKoszyka> Pobierz()
        {
            return _koszyk;
        }

        public void AktualizujIlosc(int indeks, int iloscSztuk)
        {
            ElementKoszyka element = _koszyk[indeks];
            element.IloscSztuk = iloscSztuk;
        }

        public void Dodaj(int prodID)
        {
            bool znaleziono = false;
            foreach (ElementKoszyka element in _koszyk)
            {
                if (element.ProdID == prodID)
                {
                    element.IloscSztuk += 1;
                    znaleziono = true;
                }
            }
            if (!znaleziono)
            {
                CustomConnectionDataContext db = new CustomConnectionDataContext();
                var produkt = (from p in db.Products
                               where p.ProductID == prodID
                               select p).FirstOrDefault();
                if (produkt != null)
                {
                    ElementKoszyka element = new ElementKoszyka(prodID, produkt.Name, produkt.ListPrice, 1);
                    _koszyk.Add(element);
                }
            }
        }

        public void UsunElement(int indeks)
        {
            _koszyk.RemoveAt(indeks);
        }
    }
}