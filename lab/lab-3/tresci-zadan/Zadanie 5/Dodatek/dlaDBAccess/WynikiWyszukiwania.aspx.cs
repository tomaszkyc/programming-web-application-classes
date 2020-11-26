using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using cwiczenie6.App_Code;
using System.Data;
using System.Data.OleDb;

namespace cwiczenie6 {
    public partial class WynikiWyszukiwania : System.Web.UI.Page {

        private string connectionName = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=|DataDirectory|/AdventureWorksLT_Data.mdb;";
        protected void Page_Load(object sender, EventArgs e) {
            string nazwa = Request.QueryString["Nazwa"];
            if (nazwa != null) {
                var connection = new OleDbConnection(connectionName);
                OleDbCommand dbAccessCommand = new OleDbCommand("SELECT * FROM [Product] WHERE [Name] ALIKE '%" + nazwa + "%'", connection);
                OleDbDataAdapter dbAccessDataAdapter = new OleDbDataAdapter(dbAccessCommand);
                DataTable dataTable = new DataTable();
                dbAccessDataAdapter.Fill(dataTable);
                WynikiWyszukiwaniaGridView.DataSource = dataTable;
                /*AdventureWorksDataContext db = new AdventureWorksDataContext();
                var produkty = from p in db.Products
                               where p.Name.Contains(nazwa)
                               select p;
                WynikiWyszukiwaniaGridView.DataSource = produkty;*/
                WynikiWyszukiwaniaGridView.DataBind();
            }
        }
    }
}