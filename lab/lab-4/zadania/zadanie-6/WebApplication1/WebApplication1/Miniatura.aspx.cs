using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;

namespace WebApplication1
{
    public partial class Miniatura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id != null)
            {
                CustomConnectionDataContext db = new CustomConnectionDataContext();
                var miniaturka = (from p in db.Products
                                  where p.ProductID == int.Parse(id)
                                  select p.ThumbNailPhoto).FirstOrDefault();
                if (miniaturka != null)
                {
                    Response.ContentType = "image/bmp";
                    Response.BinaryWrite(miniaturka.ToArray());
                }
                

            }


        }
    }
}