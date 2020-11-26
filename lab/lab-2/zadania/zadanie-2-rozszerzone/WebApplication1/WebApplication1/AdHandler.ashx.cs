using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Diagnostics;
using WebApplication1;
using Newtonsoft.Json;

namespace ADRotatorDemo
{

    public class AdHandler : IHttpHandler
    {

        public const string DATA_FILE_PATH = @"c:\temp\data.json";

        public void ProcessRequest(HttpContext context)
        {
            Debug.WriteLine("Processing URL...");
            string url = context.Request.QueryString["AdUrl"];
            try
            {
                AddHit(url);
            }
            catch
            {
                Debug.WriteLine("There was an error on adding clicks");
            }
            finally
            {
                context.Response.Redirect(url);
            }
        }
        private void AddHit(string url)
        {
            JArray valuesFromJSON = deserializeJSON();
            Debug.WriteLine("Ilość wpisów w tablicy JSON:");
            Debug.WriteLine(valuesFromJSON.Count());

            //convert to list
            List<AdClickInfo> adClickInfos = valuesFromJSON.ToObject<List<AdClickInfo>>();

            //modify list
            addInfoToList(adClickInfos, url);


            //save list to json
            serializeToJSON(adClickInfos);





        }

        private void serializeToJSON(List<AdClickInfo> list)
        {
            try
            {
                string json = JsonConvert.SerializeObject(list, Formatting.Indented);
                File.WriteAllText(DATA_FILE_PATH, json);
            }
            catch(Exception exception)
            {

            }
            

        }

        private void addInfoToList(List<AdClickInfo> list, string url)
        {
            //check if exists
            bool alreadyExists = list.Any(x => x.adUrl == url);

            if ( alreadyExists )
            {
                list.First(element => element.adUrl == url).numberOfClicks += 1; //increase number of clicks
            }
            else
            {
                //create adclickinfo object
                AdClickInfo adClickInfo = new AdClickInfo(url, 1); //one click as actual state

                //add to list
                list.Add(adClickInfo);
            }
        } 


        private JArray deserializeJSON()
        {
            JArray array = null;
            try
            {
                array = JArray.Parse(File.ReadAllText(DATA_FILE_PATH));
            }
            catch(Exception exception)
            {
                array = new JArray();
            }
            
            return array;
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
