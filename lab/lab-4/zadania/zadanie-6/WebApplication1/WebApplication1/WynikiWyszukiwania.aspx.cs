using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

namespace WebApplication1
{
    public partial class WynikiWyszukiwania : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nazwa = Request.QueryString["Nazwa"];
            if ( nazwa != null )
            {

                CustomConnectionDataContext db = new CustomConnectionDataContext();
                //CustomConnectionDataContext db = new CustomConnectionDataContext("<%$ ConnectionStrings:AdventureWorksLTConnectionString1 %>");
                var produkty = from p in db.Products
                               where p.Name.Contains(nazwa)
                               select p;
                WynikiWyszukiwaniaGridView.DataSource = produkty;
                WynikiWyszukiwaniaGridView.DataBind();

            }
        }
    }
}