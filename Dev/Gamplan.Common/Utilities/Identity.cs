using System;
using System.Globalization;
using Gameplan.Common.Security;

namespace Gameplan.Common.Utilities {
    /// <summary>
    /// Class Identity
    /// </summary>
    public static class Identity {
        /// <summary>
        /// Generates this instance.
        /// </summary>
        /// <returns>System.String.</returns>
        public static string Generate() {
            var guid = Guid.NewGuid().ToString();
            return guid.Substring(0, 8);
        }

        /// <summary>
        /// Creates the PID.
        /// </summary>
        /// <param name="langID">The lang ID.</param>
        /// <param name="modId">The mod id.</param>
        /// <param name="userType">Type of the user.</param>
        /// <returns>System.String.</returns>
        public static string CreatePID(int? langID, int? modId, char userType) {
            //get email params infomations.
            string strPartnerId = string.Format("{0:0000}", Claim.PartnerId);
            string strLangId = string.Format("{0:00}", langID);
            string strModId = string.Format("{0:00}", modId);
            string calDigit = ((Int32.Parse(Claim.PartnerId + langID.ToString() + modId.ToString()) * 99) % 89).ToString(CultureInfo.InvariantCulture) + ((int)userType).ToString(CultureInfo.InvariantCulture);
            return string.Format("{0}{1}{2}{3}{4}", strPartnerId, strLangId, strModId, userType, calDigit);
        }
    }
}