using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

namespace WebApplication1.Kontrolki
{
    public partial class WybraneProdukty : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CustomConnectionDataContext db = new CustomConnectionDataContext();
            var noweProdukty = (from p in db.Products
                                orderby db.Losuj()
                                select p).Take(3);
            WybraneProduktyListView.DataSource = noweProdukty;
            WybraneProduktyListView.DataBind();
        }
    }
}