using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Produkty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string katID = Request.QueryString["katID"];
                if (katID != null)
                {
                    KategorieListBox1.SelectedValue = katID;

                    var nvc = HttpUtility.ParseQueryString(Request.Url.Query);
                    Debug.Write("nvc before change: ");
                    Debug.WriteLine(nvc);



                    //nvc.Set("katID", KategorieListBox1.SelectedValue);
                    //Console.WriteLine("selected index changed with ");
                    Debug.WriteLine("Selected value:");
                    Debug.WriteLine(KategorieListBox1.SelectedValue);
                    //nvc.Remove("katID");
                    //nvc.Add("katID", KategorieListBox1.SelectedValue);
                    //string url = Request.Url.AbsolutePath;// + "?" + nvc.ToString();

                    //Response.Redirect(url, false);
                    //Context.ApplicationInstance.CompleteRequest();
                    //Response.Redirect(url);
                }
            }



        }

        protected void KategorieSqlDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            

        }

        protected void KategorieListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
/*
            Debug.WriteLine("Selected index changed occured");
            string katID = Request.QueryString["katID"];
            Debug.Write("katID w URLu: ");
            Debug.Write(katID);
            if (katID != null)
            {
                var nvc = HttpUtility.ParseQueryString(Request.Url.Query);
                Debug.Write("nvc before change: ");
                Debug.WriteLine(nvc);
                


                nvc.Set("katID", KategorieListBox1.SelectedValue);
                //Console.WriteLine("selected index changed with ");
                Debug.WriteLine("Selected value:");
                Debug.WriteLine(KategorieListBox1.SelectedValue);
                Debug.WriteLine("another: ");
                Debug.WriteLine(KategorieListBox1.SelectedItem);
                //nvc.Remove("katID");
                //nvc.Add("katID", KategorieListBox1.SelectedValue);
                string url = Request.Url.AbsolutePath + "?" + nvc.ToString();

                //Response.Redirect(url, false);
                Context.ApplicationInstance.CompleteRequest();
                //Response.Redirect(url);

            }
            */
        }
    }
}