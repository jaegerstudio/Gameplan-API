using Gameplan.Common.Security;

namespace Gameplan.Common.Constant {
    public class Datetimepicker {
        /// <summary>
        /// Datetimepickers the format.
        /// </summary>
        /// <param name="langId">The lang id.</param>
        /// <returns>System.String.</returns>
        public static string DatetimepickerFormat(int? langId = null) {
            langId = langId ?? Claim.LangId;
            switch (langId) {
                    /*Format for chinese simplied 26, Japanese 45, Chinese traditional 49, Korean 19*/
                case 26:
                case 45:
                case 49:
                case 19:
                    return "yy-dd-mm";
                case 1:
                    return "mm-dd-yy";
                default:
                    return "dd-mm-yy";
            }
        }
    }
}
