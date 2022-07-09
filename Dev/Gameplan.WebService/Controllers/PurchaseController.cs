using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Script.Serialization;
using Gameplan.WebService.Models;
using Gameplan.Core.Domain;
using Gameplan.Data;
using Gameplan.WebService.Models.Purchase;
using Gameplan.Core.Configuration;
using GamePlan.Business;
using Newtonsoft.Json.Linq;

namespace Gameplan.WebService.Controllers
{
    public class PurchaseController : BaseApiController
    {

        const string GOOGLE_PLAY_BASE64_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn1f3xjPRYzN8Sf2w58GZt8GyAeDicGh3QGogKe1RIU+3sYQLcBEll/0YyeWSb3ORC6SSQmcrbD6URPRGeJFzZwuV2i2o4iCZnvTwHFOdOTn0GZr9EihQ+owV4hoqWfr98T9Bynd77vuJQGdoaLMTyIoRUb67zrrqxPDJzpOxLkvQSYQEC4Pi9F6DjhhXaoZJ5UEV5vSN5ad7bXcaiTRF3pncPcjFo8YoGtScfCKHqpLQHmM70cbSKRltpSnnarPrQf/0Njx70jDlXtOVMPZLvCKK/wdKvuG+BFmHyYEZdW3vXJ5v580vDCjZp9BatXmfBMTGEhLBZ/vXA3Pml26p8wIDAQAB";

        //
        // GET: /Purchase/

        #region API

        [HttpGet]
        public ResponseMessage GetPurchasePackages([FromUri] PurchasePackageRequest request)
        {
            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                var securityToken = (from s in context.SecurityToken
                                     where s.Token == request.Token
                                     //&& s.Status == (int)AppInfoStatus.Online
                                     select s).FirstOrDefault();

                // validate token begin ==================================================
                if (securityToken == null)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.InvalidSessionId,
                        Message = BaseMessage.InvalidSessionId
                    };
                }
                if (securityToken.Status == (int)AppInfoStatus.ChangePassword)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.ChangePassword,
                        Message = BaseMessage.ChangePassword
                    };
                }
                if (securityToken.Status != (int)AppInfoStatus.Online)
                {
                    return new ResponseMessage
                    {
                        Code = BaseCode.SessionTimeout,
                        Message = BaseMessage.SessionTimeout
                    };
                }
                // validate token end ==================================================

                UserState state = getUserState(new Guid(request.UserId));
                int code = BaseCode.Success;
                if (state == UserState.EXPIRED) code = BaseCode.Expired;
                if (state == UserState.WARNING) code = BaseCode.Warning;

                var userId = new Guid(request.UserId);
                var user = (from s in context.UserInfo where s.Id == userId select s).FirstOrDefault();

                PurchasePackage purchasePackage = null;
                if ((Int32.Parse(request.OsType) == 1) || (Int32.Parse(request.OsType) == 2))
                {

                    // var purchasePackages = (from s in context.PurchasePackages select s).ToList();

                    if (user.CountryId == 168)

                    {
                        purchasePackage = (from s in context.PurchasePackages
                                           where s.iOSPuchaseID == "renew_a_year_sweden"
                                           select s).FirstOrDefault();
                    }
                    else
                    {
                        purchasePackage = (from s in context.PurchasePackages
                                           where s.iOSPuchaseID == "renew_a_year"
                                           select s).FirstOrDefault();
                    }
                }
                else if ((Int32.Parse(request.OsType) == 3) || (Int32.Parse(request.OsType) == 4))
                {

                    // var purchasePackages = (from s in context.PurchasePackages select s).ToList();
                    purchasePackage = (from s in context.PurchasePackages
                                       where s.iOSPuchaseID == "renew_a_year_Chinesenew2"
                                        select s).FirstOrDefault();
                }

                List<PurchasePackageModel> purchasePackageList = new List<PurchasePackageModel>();

                // foreach (var purchasePk in purchasePackages)
                //{
                if (purchasePackage != null)
                {
                    var model = new PurchasePackageModel();

                    // set purchase id
                    model.PurchaseId = Int32.Parse(request.OsType) == 1 || Int32.Parse(request.OsType) == 3
                        ? purchasePackage.AndroidPurchaseID.Trim()
                        : purchasePackage.iOSPuchaseID.Trim();

                    // set default price
                    model.Price = purchasePackage.Price.Trim();

                    // set default title
                    model.Title = purchasePackage.Title;

                    // set default description
                    model.Description = purchasePackage.Description;

                    // set extension days
                    model.ExtensionDays = purchasePackage.ExtensionDays;

                    // update infomation if localization's information is exist
                    var purchaseInfo = (from s in context.PurchasePackageInformations
                                        where s.PurchasePackageID == purchasePackage.PurchasePackageID
                                              && s.LanguageID == user.LanguageId
                                        select s).FirstOrDefault();

                    if (purchaseInfo != null)
                    {
                        //model.Price = purchaseInfo.Price;
                        model.Title = purchaseInfo.Title;
                        model.Description = purchaseInfo.Description;
                    }

                    var countryPrice = (from s in context.CountryPrices
                                        where s.CountryId == user.CountryId
                                              && s.PurchasePackageId == purchasePackage.PurchasePackageID
                                        select s).FirstOrDefault();

                    if (countryPrice != null)
                    {
                        model.Price = countryPrice.Price.Trim();
                    }

                    purchasePackageList.Add(model);
                }

                return new ResponseMessage
                {
                    Code = code,
                    Message = BaseMessage.Success,
                    UserExpDate = getUserExpDate(new Guid(request.UserId)),
                    Result = new PurchasePackageResponseModel
                    {
                        UserId = user.Id.ToString(),
                        UserExpDate = (user.UserExpDate == null) ? 0 : Convert.ToInt64(user.UserExpDate.Value.ToUniversalTime().Subtract(new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)).TotalMilliseconds),
                        PurchasePackages = purchasePackageList
                    }
                };

            }

            //return null;
        }


        [HttpPost]
        public ResponseMessage PurchaseVerification(PurchaseVerificationRequest request)
        {
            //return new ResponseMessage
            //{
            //    Code = BaseCode.Success,
            //    Message = BaseMessage.Success,
            //    Result = request
            //};
            string purchasePackageId = null;

            switch (Int32.Parse(request.OsType))
            {
                case 1:
                case 3:
                    purchasePackageId = this.VerifyAndroidPurchaseReceipt(request.PurchaseInvoice, request.Signature);
                    break;

                case 2:
                case 4:

                    if (this.VerifyIosPurchaseReceipt(request.PurchaseInvoice, false)
                        || this.VerifyIosPurchaseReceipt(request.PurchaseInvoice, true))
                        purchasePackageId = request.ProductId;

                    break;
            }

            if (purchasePackageId != null)
            {
                using (var context = new MobileGameplan(DbConn.ConnectStr))
                {
                    PurchasePackage purchasePackage = null;

                    // get user infor
                    var user =
                            (from s in context.UserInfo1s
                             where s.Id == new Guid(request.UserId)
                             select s).FirstOrDefault();

                    // get purchase package
                    if (Int32.Parse(request.OsType) == 1)
                    {

                        if (user.CountryId == 168)

                        {
                            purchasePackage = (from s in context.PurchasePackages
                                               where s.iOSPuchaseID == "renew_a_year_sweden" && String.Equals(s.AndroidPurchaseID, purchasePackageId)
                                               select s).FirstOrDefault();
                        }
                        else
                        {
                            purchasePackage = (from s in context.PurchasePackages
                                               where s.iOSPuchaseID == "renew_a_year" && String.Equals(s.AndroidPurchaseID, purchasePackageId)
                                               select s).FirstOrDefault();
                        }
                    }
                    else if (Int32.Parse(request.OsType) == 2)
                    {

                        if (user.CountryId == 168)

                        {
                            purchasePackage = (from s in context.PurchasePackages
                                               where s.iOSPuchaseID == "renew_a_year_sweden" && String.Equals(s.iOSPuchaseID, purchasePackageId)
                                               select s).FirstOrDefault();
                        }
                        else
                        {
                            purchasePackage = (from s in context.PurchasePackages
                                               where s.iOSPuchaseID == "renew_a_year" && String.Equals(s.iOSPuchaseID, purchasePackageId)
                                               select s).FirstOrDefault();
                        }

                    }
                    else if (Int32.Parse(request.OsType) == 3)
                    {
                        purchasePackage = (from s in context.PurchasePackages
                                           where s.iOSPuchaseID == "renew_a_year_Chinesenew2" && String.Equals(s.AndroidPurchaseID, purchasePackageId)
                                           select s).FirstOrDefault();
                    }
                    else if (Int32.Parse(request.OsType) == 4)
                    {
                        purchasePackage = (from s in context.PurchasePackages
                                           where s.iOSPuchaseID == "renew_a_year_Chinesenew2" && String.Equals(s.iOSPuchaseID, purchasePackageId)
                                           select s).FirstOrDefault();
                    }


                    // implement for response data
                    if (user != null && user.UserExpDate != null && purchasePackage != null)
                    {

                        DateTime userExpDate = user.UserExpDate.Value;

                        //                        user.UserExpDate.Value.AddDays(purchasePackage.ExtensionDays);

                        user.UserExpDate = userExpDate.AddDays(purchasePackage.ExtensionDays);

                        context.SubmitChanges();

                        return new ResponseMessage
                        {
                            Code = BaseCode.Success,
                            Message = BaseMessage.Success,
                            Result = new PurchaseVerifyResponseModel
                            {
                                UserId = user.Id.ToString(),
                                UserExpDate = Convert.ToInt64(user.UserExpDate.Value.ToUniversalTime().Subtract(new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)).TotalMilliseconds),
                                PackageInformation = new PurchasePackageModel
                                {
                                    PurchaseId =
                                        (Int32.Parse(request.OsType) == 1 || Int32.Parse(request.OsType) == 3)
                                            ? purchasePackage.AndroidPurchaseID
                                            : purchasePackage.iOSPuchaseID,
                                    Description = purchasePackage.Description,
                                    Title = purchasePackage.Title,
                                    Price = purchasePackage.Price,
                                    ExtensionDays = purchasePackage.ExtensionDays
                                }
                            }
                        };
                    }

                }

            }

            return new ResponseMessage
            {
                Code = BaseCode.PurchaseInvalid,
                Message = BaseMessage.PurchcaseInvalid
            };
        }

        #endregion

        #region Android verification

        private string VerifyAndroidPurchaseReceipt(string receiptData, string base64Signature)
        {
            string productId = "";
            RSACryptoServiceProvider provider = PEMKeyLoader.CryptoServiceProviderFromPublicKeyInfo(GOOGLE_PLAY_BASE64_PUBLIC_KEY);
            string RSAXml = provider.ToXmlString(false);

            if (VerifyAndroidSignature(receiptData, base64Signature, RSAXml))
            {
                JObject receiptJObject = JObject.Parse(receiptData);
                productId = (string)receiptJObject["productId"];
            }

            return productId;
        }

        private bool VerifyAndroidSignature(string message, string base64Signature, string xmlPublicKey)
        {
            Debug.WriteLine("base64Signature : " + base64Signature);
            // Create the provider and load the KEY
            RSACryptoServiceProvider provider = new RSACryptoServiceProvider();
            provider.FromXmlString(xmlPublicKey);

            // The signature is supposed to be encoded in base64 and the SHA1 checksum
            // of the message is computed against the UTF-8 representation of the message
            byte[] signature = System.Convert.FromBase64String(base64Signature);
            SHA1Managed sha = new SHA1Managed();
            byte[] data = System.Text.Encoding.UTF8.GetBytes(message);

            return provider.VerifyData(data, sha, signature);
        }

        #endregion

        #region iOS verification

        private bool VerifyIosPurchaseReceipt(string receiptData, bool isSandbox)
        {

            string validateSandbox = "https://sandbox.itunes.apple.com/verifyReceipt";
            string validateRelease = "https://buy.itunes.apple.com/verifyReceipt";

            string returnmessage = "";
            try
            {
                // var json = "{ 'receipt-data': '" + receiptData + "'}";

                var json = new JObject(new JProperty("receipt-data", receiptData)).ToString();

                ASCIIEncoding ascii = new ASCIIEncoding();
                byte[] postBytes = Encoding.UTF8.GetBytes(json);

                //  HttpWebRequest request;
                var request = System.Net.HttpWebRequest.Create(isSandbox ? validateSandbox : validateRelease);
                request.Method = "POST";
                request.ContentType = "application/json";
                request.ContentLength = postBytes.Length;

                //Stream postStream = request.GetRequestStream();
                //postStream.Write(postBytes, 0, postBytes.Length);
                //postStream.Close();

                using (var stream = request.GetRequestStream())
                {
                    stream.Write(postBytes, 0, postBytes.Length);
                    stream.Flush();
                }

                //  var sendresponse = (HttpWebResponse)request.GetResponse();

                var sendresponse = request.GetResponse();

                string sendresponsetext = "";
                using (var streamReader = new StreamReader(sendresponse.GetResponseStream()))
                {
                    sendresponsetext = streamReader.ReadToEnd().Trim();
                }

                returnmessage = sendresponsetext;

                if (returnmessage != null && !returnmessage.Trim().Equals(""))
                {


                    var receiptJObject = JObject.Parse(returnmessage);

                    int status = Int32.Parse(receiptJObject["status"].ToString());

                    //System.IO.File.WriteAllText(String.Format(@"C:\Users\Public\log\WriteText{0}.txt", isSandbox), status.ToString());

                    if (status == 0)
                    {
                        return true;
                    }
                }

            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

            return false;

        }

        private string GetPurchasePackageFromItuneResponse(string iTuneResponse)
        {


            if (iTuneResponse != null && !iTuneResponse.Trim().Equals(""))
            {
                JObject receiptJObject = JObject.Parse(iTuneResponse);

                int status = Int32.Parse((string)receiptJObject["status"]);

                if (status == 0)
                {

                }
            }
            return null;
        }

        #endregion

        #region Util methods
        private PurchasePackageModel GetPurchasePackageModel(string purchaseId, int osType)
        {
            PurchasePackageModel packageModel = new PurchasePackageModel();

            using (var context = new MobileGameplan(DbConn.ConnectStr))
            {
                if ((osType == 1) || (osType == 3))
                {
                    var pk =
                         (from s in context.PurchasePackages where s.AndroidPurchaseID == purchaseId select s)
                             .FirstOrDefault();
                    if (pk != null)
                    {
                        packageModel.PurchaseId = pk.AndroidPurchaseID;
                        packageModel.Title = pk.Title;
                        packageModel.Description = pk.Description;
                        packageModel.Price = pk.Price;
                        packageModel.ExtensionDays = pk.ExtensionDays;
                    }
                }
                else if ((osType == 2) || (osType == 4))
                {
                    var pk =
                        (from s in context.PurchasePackages where s.iOSPuchaseID == purchaseId select s)
                            .FirstOrDefault();
                    if (pk != null)
                    {
                        packageModel.PurchaseId = pk.iOSPuchaseID;
                        packageModel.Title = pk.Title;
                        packageModel.Description = pk.Description;
                        packageModel.Price = pk.Price;
                        packageModel.ExtensionDays = pk.ExtensionDays;
                    }
                }
            }


            return packageModel;
        }

        #endregion

    }
}
