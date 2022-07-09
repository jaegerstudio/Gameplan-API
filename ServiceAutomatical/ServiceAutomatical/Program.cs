using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ServiceAutomatical
{
    class Program
    {
        public const string URL_CHECK_AND_SEND_NOTIFICATION =
            "http://pg12.clickac.com/api/notification/CheckAndSendNotification";

        static void Main(string[] args)
        {
            WebRequest req =WebRequest.Create(URL_CHECK_AND_SEND_NOTIFICATION);
            
            WebResponse resp = req.GetResponse();
            System.IO.StreamReader sr = new System.IO.StreamReader(resp.GetResponseStream());

            string data = sr.ReadToEnd();

            Console.WriteLine(data);
            Console.ReadLine();
        }
    }
}
