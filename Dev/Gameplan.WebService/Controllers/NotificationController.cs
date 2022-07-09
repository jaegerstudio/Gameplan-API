using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Http;
using Gameplan.Core.Configuration;
using Gameplan.Data;
using Gameplan.WebService.Models;
using Gameplan.WebService.Models.Notification;
using System.Net;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel.Dispatcher;
using System.Text;
using System.Web.Script.Serialization;
using Gameplan.Core.Domain;
using Gameplan.WebService.Models.Account;
//using MoonAPNS;
using Newtonsoft.Json;
using JdSoft.Apple.Apns.Notifications;

namespace Gameplan.WebService.Controllers
{
    public class NotificationController : BaseApiController
    {

        enum NotificationType
        {
            WARNING, EXPIRED
        }

        public const string GOOGLE_API_KEY_PUSH_NOTIFICATION = "AIzaSyAXXKB21eVfkUQuEivDEkKK6iACqMGYXNU";
        public const string USER_ID = "user_id";
        public const string MESSAGE = "message";
        public const string NOTIFICATION_CODE = "code";
        public const string NOTIFICATION_TOKEN = "NotificationToken";

#region API
        [HttpPost]
        public ResponseMessage RegisterNotification(NotificationRegistrationRequest request)
        {
            if (request.UserId == null || request.OsType == null || request.NotificationToken == null 
                || (Int32.Parse(request.OsType) == 1 && request.Imei == null))
            {
                return new ResponseMessage
                {
                    Code = BaseCode.DataPostInvalid,
                    Message = BaseMessage.DataPostInvalid
                };
            }


            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                           && s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();

                if (securityToken != null)
                {
                    var datetime = (long)(DateTime.Now - new DateTime(1970, 1, 1)).TotalMilliseconds;
                    securityToken.Status = 0;
                    securityToken.LastActDate = datetime;
                    context.SubmitChanges();
                }

                //NotificationRegistration queryResult = null;

                // validata data to insert new record
                var query = (Int32.Parse(request.OsType) == 1) 
                    ? ((from s in context.NotificationRegistrations
                    where String.Equals(s.Imei, request.Imei)
                    select s).FirstOrDefault()) 
                    : ((from s in context.NotificationRegistrations
                    where String.Equals(s.NotificationToken, request.NotificationToken)
                    select s).FirstOrDefault());

                if (query == null)
                {
                    // insert new record
                    NotificationRegistration notificationRegistration = new NotificationRegistration
                    {
                        UserID = new Guid(request.UserId),
                        OsType = Byte.Parse(request.OsType),
                        NotificationToken = request.NotificationToken,
                        Imei = (Int32.Parse(request.OsType) == 1) ? request.Imei : null
                    };

                    context.NotificationRegistrations.InsertOnSubmit(notificationRegistration);
                    context.SubmitChanges();
                }
                else
                {
                    query.UserID = new Guid(request.UserId);
                    query.NotificationToken = request.NotificationToken;
                    context.SubmitChanges();
                }
                
            }

            return new ResponseMessage
            {
                Code = BaseCode.Success,
                Message = BaseMessage.Success
            };
        }

        [HttpGet]
        public ResponseMessage CheckAndSendNotification()
        {

            var listWaring = new List<NotificationUser>();
            var listExpired = new List<NotificationUser>();

            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                DateTime nowDateTime = DateTime.Now;
                var listUser = (from s in context.UserInfo select s).ToArray();
                var warning = (from s in context.WarningMessages select s).FirstOrDefault();

                string warningMessage = (warning != null)
                    ? warning.Message
                    : "Your PC Gameplan App will expire in {0} days. Renew your subscription to maintain access to stored data.";

                var expired = (from s in context.ExpiredMessages select s).FirstOrDefault();
                string expiredMessage = (expired != null)
                    ? expired.Message
                    : "Your PC Gameplan App expired on {0}. Renew your subscription to regain access to stored data.";

                

                foreach (var user in listUser)
                {
                    if (user.UserExpDate != null)
                    {
                        TimeSpan timeSpan = user.UserExpDate.Value - nowDateTime;
                        if (timeSpan.TotalDays < 11)
                        {
                            NotificationUser nu = new NotificationUser();
                            nu.UserId = user.Id.ToString();

                            // add device token to NotificationUser
                            var listDevice =
                                    (from s in context.NotificationRegistrations where s.UserID == user.Id select s)
                                        .ToArray();

                            foreach (var device in listDevice)
                            {
                                if (device.OsType == 1)
                                {
                                    nu.AddAndroidToken(device.NotificationToken);
                                }
                                else
                                {
                                    nu.AddIosToken(device.NotificationToken);
                                }
                            }

                            // check and set type of notification
                            if (timeSpan.TotalDays < 1)
                            {
                                // add to expired list
                                nu.Message = String.Format(expiredMessage, user.UserExpDate.Value.ToString("MMM dd,yyyy"));
                                nu.RemainingDays = 0;

                                listExpired.Add(nu);
                            }
                            else
                            {
                                // add to warning list
                                nu.Message = String.Format(warningMessage, (int)timeSpan.TotalDays);
                                nu.RemainingDays = (int) timeSpan.TotalDays;
                                listWaring.Add(nu);
                            }
                        }
                    }
                }
                
                SendNotification(ref listWaring, NotificationType.WARNING);
                SendNotification(ref listExpired, NotificationType.EXPIRED);
            }

            return new ResponseMessage
            {
                Code = BaseCode.Success,
                Message = String.Format("Notification time: {0}", DateTime.Now.ToString("g")),
                Result = new NotificationList
                {
                    WarningList = listWaring,
                    ExpList = listExpired
                }
            };
        }


#endregion

        private void SendNotification(ref List<NotificationUser> listNotificationUsers, NotificationType notificationType)
        {
           
                for (int i = 0; i < listNotificationUsers.Count; i ++)
                {
                    var userNotification = listNotificationUsers.ElementAt(i);
                    SendAndroidNotification(ref userNotification, notificationType);
                    SendIosNotification(ref userNotification, notificationType);
                }
          
        }

        
#region Android push Notifificaiton
        private void SendAndroidNotification(ref NotificationUser notificationUser, NotificationType notificationType)
        {

            if (notificationUser.GetAndroidTokenList() == null
                || notificationUser.GetAndroidTokenList().Count == 0)
                return;

            //foreach (var token in notificationUser.GetAndroidTokenList())
            //{
            //    //string jsonToken = JsonConvert.SerializeObject(notificationUser.GetAndroidTokenList());
            //    //var token =
            //    //    "APA91bFIXJMeVhkvsBcuAdC4yT0zPqPevmGVw1SoeQ5Q2iFdREm_9WczDP3JnZhaYCHXmklZTS_ycfJWKJx7Eg0XvH59jP2VQej8D_6fYvNV5RPVN39-FRYP9CSrBvdrGV5eDAuhPASfjB6mR2oV3r86hWmVhH_35mxt8P9DwG27swubPJxwfAE";


            //    string postData =
            //    "{ \"registration_id\":\"" + token + "\", " +
            //    "\"data\": {\"" + USER_ID + "\":\"" + notificationUser.UserId + "\", " +
            //    "\"" + NOTIFICATION_CODE + "\":" + (notificationType == NotificationType.WARNING ? BaseCode.Warning : BaseCode.Expired) + ", " +
            //    "\"" + MESSAGE + "\": \"" + notificationUser.Message + "\", " +
            //    "\"" + NOTIFICATION_TOKEN + "\":\"" + token + "\"}}";

            //    string response = SendGCMNotification(GOOGLE_API_KEY_PUSH_NOTIFICATION, postData);

            //    notificationUser.AddResponse(String.Format("Post data: {0} ========================== response: {1}", postData, response));
            //}


            string jsonToken = JsonConvert.SerializeObject(notificationUser.GetAndroidTokenList());
            //var token =
            //    "APA91bFIXJMeVhkvsBcuAdC4yT0zPqPevmGVw1SoeQ5Q2iFdREm_9WczDP3JnZhaYCHXmklZTS_ycfJWKJx7Eg0XvH59jP2VQej8D_6fYvNV5RPVN39-FRYP9CSrBvdrGV5eDAuhPASfjB6mR2oV3r86hWmVhH_35mxt8P9DwG27swubPJxwfAE";


            string postData =
            "{ \"registration_ids\":" + jsonToken + ", " +
              "\"data\": {\"" + USER_ID + "\":\"" + notificationUser.UserId + "\", " +
              "\"" + NOTIFICATION_CODE + "\":" + (notificationType == NotificationType.WARNING ? BaseCode.Warning : BaseCode.Expired) + ", " +
                         "\"" + MESSAGE + "\": \"" + notificationUser.Message + "\"}}";

            string response = SendGCMNotification(GOOGLE_API_KEY_PUSH_NOTIFICATION, postData);


            notificationUser.AddResponse(String.Format("Post data: {0} ========================== response: {1}", postData, response));
        }

        /// <summary>
        /// Send a Google Cloud Message. Uses the GCM service and your provided api key.
        /// </summary>
        /// <param name="apiKey"></param>
        /// <param name="postData"></param>
        /// <param name="postDataContentType"></param>
        /// <returns>The response string from the google servers</returns>
        private string SendGCMNotification(string apiKey, string postData, string postDataContentType = "application/json")
        {
            ServicePointManager.ServerCertificateValidationCallback += new RemoteCertificateValidationCallback(ValidateServerCertificate);

            //
            //  MESSAGE CONTENT
            byte[] byteArray = Encoding.UTF8.GetBytes(postData);

            //
            //  CREATE REQUEST
            HttpWebRequest Request = (HttpWebRequest)WebRequest.Create("https://android.googleapis.com/gcm/send");
            Request.Method = "POST";
            Request.KeepAlive = false;
            Request.ContentType = postDataContentType;
            Request.Headers.Add(string.Format("Authorization: key={0}", apiKey));
            Request.ContentLength = byteArray.Length;

            Stream dataStream = Request.GetRequestStream();
            dataStream.Write(byteArray, 0, byteArray.Length);
            dataStream.Close();

            //
            //  SEND MESSAGE
            try
            {
                WebResponse Response = Request.GetResponse();
                HttpStatusCode ResponseCode = ((HttpWebResponse)Response).StatusCode;
                if (ResponseCode.Equals(HttpStatusCode.Unauthorized) || ResponseCode.Equals(HttpStatusCode.Forbidden))
                {
                    var text = "Unauthorized - need new token";
                }
                else if (!ResponseCode.Equals(HttpStatusCode.OK))
                {
                    var text = "Response from web service isn't OK";
                }

                StreamReader Reader = new StreamReader(Response.GetResponseStream());
                string responseLine = Reader.ReadToEnd();
                Reader.Close();

                return responseLine;
            }
            catch (Exception e)
            {
            }
            return "error";
        }

        public static bool ValidateServerCertificate(
                                                    object sender,
                                                    X509Certificate certificate,
                                                    X509Chain chain,
                                                    SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }
#endregion

        

        //[HttpGet]
        //public ResponseMessage TestNotification()
        //{

        //    string testDeviceToken = "f6e32e8989b14500e548c582c828c786a0c3a7ce95c353f4ed9347fdc1c91dd4";

        //    NotificationUser notificationUser = new NotificationUser();


        //    this.Ios_Push_Notification("Dung xinh gai", 1, 2, "Dung ham");

        //    return new ResponseMessage
        //    {
        //        Code = BaseCode.Success,
        //        Message = BaseMessage.Success
        //    };
        //}

#region iOS push notification

        [HttpGet]
        public ResponseMessage TestPushIos([FromUri] SignoutRequest request)
        {
            NotificationUser notificationUser = new NotificationUser();
            notificationUser.AddIosToken("964ca4c9e14a2fe07b1c786d3a7402fb08292c99896703e11bf47212cfbffc20");
            notificationUser.AddIosToken("964ca4c9e14a2fe07b1c786d3a7402fb08292c99896703e11bf47212cfbffc20");
            notificationUser.Message = "message demo";
            notificationUser.UserId = "FF88BBE5-397A-439B-BC2D-FF0B5E16AADB";

            SendIosNotification(ref notificationUser,  NotificationType.WARNING);

            return new ResponseMessage
            {
                Code = BaseCode.Success,
                Message = BaseMessage.Success,
                Result = notificationUser
            };

        }

        private void SendIosNotification(ref NotificationUser notificationUser, NotificationType notificationType)
        {
            if (notificationUser.GetIosTokenList() == null
                || notificationUser.GetIosTokenList().Count == 0)
                return;

            bool sandbox = true;

            //Put your PKCS12 .p12 or .pfx filename here.
            // Assumes it is in the same directory as your app
            string p12File = @"C:\Users\Public\Certificates.p12";

            //This is the password that you protected your p12File
            // If you did not use a password, set it as null or an empty string
            string p12FilePassword = "1";

            //Number of notifications to send
            int count = notificationUser.GetIosTokenList().Count;

            //Number of milliseconds to wait in between sending notifications in the loop
            // This is just to demonstrate that the APNS connection stays alive between messages
            int sleepBetweenNotifications = 2000;

            string p12Filename = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, p12File);

            NotificationService service = new NotificationService(sandbox, p12Filename, p12FilePassword, 1);

            service.SendRetries = 5; //5 retries before generating notificationfailed event
            service.ReconnectDelay = 5000; //5 seconds

            service.Error += new NotificationService.OnError(service_Error);
            service.NotificationTooLong += new NotificationService.OnNotificationTooLong(service_NotificationTooLong);

            service.BadDeviceToken += new NotificationService.OnBadDeviceToken(service_BadDeviceToken);
            service.NotificationFailed += new NotificationService.OnNotificationFailed(service_NotificationFailed);
            service.NotificationSuccess += new NotificationService.OnNotificationSuccess(service_NotificationSuccess);
            service.Connecting += new NotificationService.OnConnecting(service_Connecting);
            service.Connected += new NotificationService.OnConnected(service_Connected);
            service.Disconnected += new NotificationService.OnDisconnected(service_Disconnected);


            //Dictionary<string, object> rows = new Dictionary<string, object>();
            //JavaScriptSerializer objSerializable = new JavaScriptSerializer();
            //List<Dictionary<string, object>> list = new List<Dictionary<string, object>>();
            //Dictionary<string, object> row = new Dictionary<string, object>();

            //rows.Add(USER_ID, notificationUser.UserId);
            //rows.Add(NOTIFICATION_CODE, (notificationType == NotificationType.WARNING ? BaseCode.Warning : BaseCode.Expired));
            //rows.Add(MESSAGE, notificationUser.Message);

            //String postDatas = objSerializable.Serialize(rows);
            //String postDatas = JsonConvert.SerializeObject(rows);

            for (int i = 0; i < count; i++)
            {
                //Create a new notification to send
                Notification alertNotification = new Notification(notificationUser.GetIosTokenList().ElementAt(i));

                alertNotification.Payload.Alert.Body = notificationUser.Message;
                alertNotification.Payload.Sound = "bingbong.aiff";
                alertNotification.Payload.Badge = 9;

                //alertNotification.Payload.AddCustom("data", postDatas);
                alertNotification.Payload.AddCustom(USER_ID, notificationUser.UserId);
                alertNotification.Payload.AddCustom(NOTIFICATION_CODE, notificationType == NotificationType.WARNING ? BaseCode.Warning : BaseCode.Expired);
                alertNotification.Payload.AddCustom(MESSAGE, notificationUser.Message);
                //Queue the notification to be sent
                if (service.QueueNotification(alertNotification))
                    notificationUser.AddResponse("Notification Queued!");
                else
                    notificationUser.AddResponse("Notification Failed to be Queued!");

                //Sleep in between each message
                if (i < count)
                {
                    System.Threading.Thread.Sleep(sleepBetweenNotifications);
                }
            }

            //Console.WriteLine("Cleaning Up...");

            //First, close the service.
            //This ensures any queued notifications get sent befor the connections are closed
            service.Close();

            //Clean up
            service.Dispose();

            //Console.WriteLine("Done!");
            //Console.WriteLine("Press enter to exit...");
            //Console.ReadLine();
        }

        static void service_BadDeviceToken(object sender, BadDeviceTokenException ex)
        {
            Console.WriteLine("Bad Device Token: {0}", ex.Message);
        }

        static void service_Disconnected(object sender)
        {
            Console.WriteLine("Disconnected...");
        }

        static void service_Connected(object sender)
        {
            Console.WriteLine("Connected...");
        }

        static void service_Connecting(object sender)
        {
            Console.WriteLine("Connecting...");
        }

        static void service_NotificationTooLong(object sender, NotificationLengthException ex)
        {
            Console.WriteLine(string.Format("Notification Too Long: {0}", ex.Notification.ToString()));
        }

        static void service_NotificationSuccess(object sender, Notification notification)
        {
            Console.WriteLine(string.Format("Notification Success: {0}", notification.ToString()));
        }

        static void service_NotificationFailed(object sender, Notification notification)
        {
            Console.WriteLine(string.Format("Notification Failed: {0}", notification.ToString()));
        }

        static void service_Error(object sender, Exception ex)
        {
            Console.WriteLine(string.Format("Error: {0}", ex.Message));
        }

#endregion

#region Define class
        private class NotificationUser
        {
            public string Message { get; set; }
            public string UserId { get; set; }
            public int RemainingDays { get; set; }
            public  List<string> AndroidPushTokenList { get; private set; }
            public  List<string> iOSPushTokenList { get; private set; }
            public List<string> ResponseNotify { get; private set; }

            public void AddAndroidToken(string Token)
            {
                if (AndroidPushTokenList == null)
                {
                    AndroidPushTokenList = new List<string>();
                }

                AndroidPushTokenList.Add(Token);
            }

            public void AddIosToken(string Token)
            {
                if (iOSPushTokenList == null)
                {
                    iOSPushTokenList = new List<string>();
                }

                iOSPushTokenList.Add(Token);
            }

            public List<string> GetAndroidTokenList()
            {
                return AndroidPushTokenList;
            }

            public List<string> GetIosTokenList()
            {
                return iOSPushTokenList;
            }

            public void AddResponse(string response)
            {
                if (ResponseNotify == null)
                {
                    ResponseNotify = new List<string>();
                }

                ResponseNotify.Add(response);
            }
        }

        class NotificationList
        {
            public List<NotificationUser> WarningList { get; set; }
            public List<NotificationUser> ExpList { get; set; } 
        }

#endregion

    }
}
