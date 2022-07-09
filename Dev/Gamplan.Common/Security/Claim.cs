using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using Gameplan.Common.Configuration;
using Gameplan.Common.Enums;
using Gameplan.Common.Extensions;

namespace Gameplan.Common.Security {
    /// <summary>
    /// Class Claim
    /// </summary>
    public class Claim {
        /// <summary>
        /// Initialize the specified identity.
        /// </summary>
        /// <param name="identity">The identity.</param>
        public static void Initializes(Identity identity) {
            HttpContext.Current.Session["Identity"] = identity;
        }

        /// <summary>
        /// Sets the working role.
        /// </summary>
        /// <param name="roleId">The role id.</param>
        public static void SetWorkingRole(int roleId) {
            Identity currentPrinpical = GetCurrentPrincipal();
            if (currentPrinpical != null) {
                //set working role.
                currentPrinpical.WorkingAsRole = roleId;
                //refresh claim.
                Initializes(currentPrinpical);
            }
        }

        /// <summary>
        /// Sets the working module.
        /// </summary>
        /// <param name="moduleId">The module id.</param>
        public static void SetWorkingModule(Module moduleId) {
            Identity currentPrinpical = GetCurrentPrincipal();
            if (currentPrinpical != null) {
                //set working role.
                currentPrinpical.ModuleId = (int) moduleId;
                //refresh claim.
                Initializes(currentPrinpical);
            }
        }

        /// <summary>
        /// Marks as answered.
        /// </summary>
        /// <param name="selectedRespondent">if set to <c>true</c> [selected respondent].</param>
        public static void MarkAsAnswered(bool? selectedRespondent = false) {
            Identity currentPrinpical = GetCurrentPrincipal();
            if (currentPrinpical != null) {
                //set answer status.
                currentPrinpical.AnswerStatus = 1;
                currentPrinpical.SelectedRespondents = selectedRespondent == true;
                //refresh claim.
                Initializes(currentPrinpical);
            }
        }

        /// <summary>
        /// Clears this instance.
        /// </summary>
        public static void Clear() {
            //clear all session data.
            HttpContext.Current.Session.Clear();
        }

        /// <summary>
        /// Gets a value indicating whether this instance is logged.
        /// </summary>
        /// <value><c>true</c> if this instance is logged; otherwise, <c>false</c>.</value>
        public static bool IsLogged {
            get { return GetCurrentPrincipal() != null; }
        }

        /// <summary>
        /// Gets the user id.
        /// </summary>
        /// <value>The user id.</value>
        public static int UserId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().UserId;
                }
                return 0;
            }
        }

        /// <summary>
        /// Gets the report type id.
        /// </summary>
        /// <value>The report type id.</value>
        public static int? ReportTypeId {
            get {
                if (IsLogged && UserType == Constant.UserType.Participant) {
                    return GetCurrentPrincipal().ReportTypeId;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the type of the user.
        /// </summary>
        /// <value>The type of the user.</value>
        public static string UserType {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().UserType;
                }
                var _userType = HttpContext.Current.Session["UserType"] as string;
                if (!string.IsNullOrEmpty(_userType)) {
                    return _userType;
                }
                return Constant.UserType.Admin;
            }
        }

        /// <summary>
        /// Gets the survey id.
        /// </summary>
        /// <value>The survey id.</value>
        public static int? SurveyId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().SurveyId;
                }
                var _surveyId = HttpContext.Current.Session["SurveyId"] as int?;
                if (_surveyId.HasValue) {
                    return _surveyId;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the lang id.
        /// </summary>
        /// <value>The lang id.</value>
        public static int LangId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().LangId;
                }
                var _langId = HttpContext.Current.Session["LangId"] as string;
                if (!string.IsNullOrEmpty(_langId)) {
                    return int.Parse(_langId);
                }
                return Default.DefaultLanguage;
            }
        }

        /// <summary>
        /// Gets a value indicating whether this instance is RTL lang.
        /// </summary>
        /// <value><c>true</c> if this instance is RTL lang; otherwise, <c>false</c>.</value>
        public static bool IsRTLLang {
            get {
                var config = ConfigurationManager.AppSettings["RTLLangs"];
                if (!String.IsNullOrEmpty(config)) {
                    if (config.SplitValues().Contains(LangId)) {
                        return true;
                    }
                }
                return false;
            }
        }


        /// <summary>
        /// Gets a value indicating whether this instance is sp language.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is sp language; otherwise, <c>false</c>.
        /// </value>
        public static bool IsSPLang {
            get {
                var config = ConfigurationManager.AppSettings["SPLangs"];
                if (!String.IsNullOrEmpty(config)) {
                    if (config.SplitValues().Contains(LangId)) {
                        return true;
                    }
                }
                return false;
            }
        }
        
        /// <summary>
        /// Gets the module id.
        /// </summary>
        /// <value>The module id.</value>
        public static int ModuleId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().ModuleId;
                }
                var _langId = HttpContext.Current.Session["ModuleId"] as string;
                if (!string.IsNullOrEmpty(_langId)) {
                    return int.Parse(_langId);
                }
                return 0;
            }
        }

        /// <summary>
        /// Gets the partner id.
        /// </summary>
        /// <value>The partner id.</value>
        public static int PartnerId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().PartnerId;
                }
                var _partnerId = HttpContext.Current.Session["PartnerId"] as string;
                if (!string.IsNullOrEmpty(_partnerId)) {
                    return int.Parse(_partnerId);
                }

                return 0;
            }
        }

        /// <summary>
        /// Gets the name of the user.
        /// </summary>
        /// <value>The name of the user.</value>
        public static int? CompanyId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().CompanyId;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the email.
        /// </summary>
        /// <value>The email.</value>
        public static int? WorkshopId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().WorkshopId;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the role id.
        /// </summary>
        /// <value>The role id.</value>
        public static int? RoleId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().WorkingAsRole;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the roles.
        /// </summary>
        /// <value>The roles.</value>
        public static IList<Role> Roles {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().Roles;
                }
                return new List<Role>();
            }
        }

        /// <summary>
        /// Gets the name of the user.
        /// </summary>
        /// <value>The name of the user.</value>
        public static string UserName {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().UserName;
                }
                return string.Empty;
            }
        }

        /// <summary>
        /// Gets or sets a value indicating whether [selected respondents].
        /// </summary>
        /// <value><c>true</c> if [selected respondents]; otherwise, <c>false</c>.</value>
        public static bool SelectedRespondents {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().SelectedRespondents;
                }
                return false;
            }
        }

        /// <summary>
        /// Gets or sets a value indicating whether this instance has demo graphic.
        /// </summary>
        /// <value><c>true</c> if this instance has demo graphic; otherwise, <c>false</c>.</value>
        public static bool HasDemoGraphic {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().HasDemoGraphic;
                }
                return false;
            }
        }

        /// <summary>
        /// Gets the participant id.
        /// </summary>
        /// <value>The participant id.</value>
        public static int? ParticipantId {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().ParticipantId;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the type of the respondent.
        /// </summary>
        /// <value>The type of the respondent.</value>
        public static int? RespondentType {
            get {
                if (IsLogged) {
                    return GetCurrentPrincipal().RespondentType;
                }
                return null;
            }
        }

        /// <summary>
        /// Gets the survey status.
        /// </summary>
        /// <value>The survey status.</value>
        public static SurveyStatus SurveyStatus {
            get {
                if (IsLogged && UserType != Constant.UserType.Admin) {
                    if (GetCurrentPrincipal().AnswerStatus == 1) {
                        return SurveyStatus.Answered;
                    }
                    if (GetCurrentPrincipal().ScoreStatus == 1) {
                        return SurveyStatus.Closed;
                    }

                    return SurveyStatus.Open;
                }
                return SurveyStatus.NA;
            }
        }

        /// <summary>
        /// Gets the survey status.
        /// </summary>
        /// <value>The survey status.</value>
        public static SurveyStatus GamePlanStatus {
            get {
                if (IsLogged && UserType != Constant.UserType.Admin) {
                    if (GetCurrentPrincipal().ListenerAnswerStatus == 1) {
                        return SurveyStatus.Answered;
                    }
                    if (GetCurrentPrincipal().ScoreStatus == 1) {
                        return SurveyStatus.Closed;
                    }

                    return SurveyStatus.Open;
                }
                return SurveyStatus.NA;
            }
        }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is survey closed.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is survey closed; otherwise, <c>false</c>.
        /// </value>
        public static bool IsSurveyClosed {
            get {
                return GetCurrentPrincipal().IsSurveyClosed;
            }
        }

        /// <summary>
        /// Gets the user.
        /// </summary>
        /// <returns>Identity.</returns>
        private static Identity GetCurrentPrincipal() {
            if (HttpContext.Current != null) {
                //try to get identity from session.
                Identity identity = HttpContext.Current.Session["Identity"] as Identity;
                if (identity != null) {
                    return identity;
                }
            }
            //return null if doesn't exist.
            return null;
        }

        /// <summary>
        /// Sets the display language.
        /// </summary>
        /// <param name="langId">The lang id.</param>
        public static void SetDisplayLanguage(int? langId) {
            Identity currentPrinpical = GetCurrentPrincipal();
            if (currentPrinpical != null) {
                currentPrinpical.LangId = langId ?? Default.DefaultLanguage;
                //refresh claim.
                Initializes(currentPrinpical);
            }
        }

        /// <summary>
        /// Sets the cookie.
        /// </summary>
        /// <param name="key">The key.</param>
        /// <param name="value">The value.</param>
        public static void SetCookie(string key, string value) {
            var myCookie = new HttpCookie(key) {
                Value = value,
                Expires = DateTime.Now.AddYears(1)
            };
            HttpContext.Current.Response.Cookies.Add(myCookie);
        }

        /// <summary>
        /// Gets the cookie.
        /// </summary>
        /// <param name="key">The key.</param>
        /// <returns>System.String.</returns>
        public static string GetCookie(string key) {
            var httpCookie = HttpContext.Current.Request.Cookies.Get(key);
            if (httpCookie != null)
                return httpCookie.Value;
            return null;
        }
    }
}