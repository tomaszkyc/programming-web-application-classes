using System;
using System.Web;

namespace WebApplication1
{
    public class AdClickInfo
    {
        public string adUrl { get; set; }
        public long numberOfClicks { get; set; }

        public AdClickInfo(string adUrl, long numberOfClicks)
        {
            this.adUrl = adUrl;
            this.numberOfClicks = numberOfClicks;
        }
    }
}
