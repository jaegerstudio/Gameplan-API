using System.Collections.Generic;

namespace Gameplan.Common.Configuration {
    /// <summary>
    /// DateTime
    /// </summary>
    public class Formats {
        /// <summary>
        /// Gets the date time.
        /// </summary>
        /// <value>
        /// The date time.
        /// </value>
        public static Dictionary<int, string> DateTime {
            get {
                var dateTimeFormats = new Dictionary<int, string>();

                dateTimeFormats.Add(1, "MM/DD/CCYY");
                dateTimeFormats.Add(2, "DD/MM/CCYY");
                dateTimeFormats.Add(3, "YYYY/MM/DD");
                dateTimeFormats.Add(4, "Month DD, CCYY");
                dateTimeFormats.Add(5, "DD Month, CCYY");
                dateTimeFormats.Add(6, "YYYY Month DD");


                //-------------------------------------------------\\
                //fn return.
                return dateTimeFormats;
            }
        }

        /// <summary>
        /// Gets the name format.
        /// </summary>
        /// <value>
        /// The name format.
        /// </value>
        public static Dictionary<int, string> NameFormat {
            get {
                var nameFormats = new Dictionary<int, string>();

                nameFormats.Add(1, "FL");
                nameFormats.Add(2, "TFL");
                nameFormats.Add(3, "LFT");
                nameFormats.Add(4, "TL");
                nameFormats.Add(5, "LT");
                nameFormats.Add(6, "LF");
                nameFormats.Add(7, "F");


                //-------------------------------------------------\\
                //fn return.
                return nameFormats;
            }
        }
    }
}