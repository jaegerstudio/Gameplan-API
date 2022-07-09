using System;
using System.Collections.Generic;
using System.Linq;

namespace Gameplan.Common.Extensions {
    /// <summary>
    /// Class StringExtensions
    /// </summary>
    public static class StringExtensions {
        /// <summary>
        /// Splits the values.
        /// </summary>
        /// <param name="stringValue">The string value.</param>
        /// <returns>IList{System.Int32}.</returns>
        public static IList<int> SplitValues(this string stringValue) {
            string[] separators = {",", ";"};
            string[] values = stringValue.Split(separators, StringSplitOptions.RemoveEmptyEntries);
            IList<int> result = new List<int>();
            foreach (var value in values) {
                int tmpValue;
                if (int.TryParse(value, out tmpValue)) {
                    result.Add(tmpValue);
                }
            }
            return result;
        }

        /// <summary>
        /// Removes the dot COM.
        /// </summary>
        /// <param name="stringValue">The string value.</param>
        /// <returns></returns>
        public static string RemoveDotCom(this string stringValue) {
            if (string.IsNullOrEmpty(stringValue)) {
                return "";
            }

            var temp = stringValue.Replace(".", "");
            return temp.Replace(",", "");
        }

        /// <summary>
        /// Lefts the specified value.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <param name="maxLength">The maximum length.</param>
        /// <returns></returns>
        public static string Left(this string value, int maxLength) {
            if (string.IsNullOrEmpty(value)) return value;
            maxLength = Math.Abs(maxLength);

            return (value.Length <= maxLength
                ? value
                : value.Substring(0, maxLength)
                );
        }

        /// <summary>
        /// Values the specified value.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns></returns>
        public static int Val( this string value)
        {
            String result = String.Empty;
            foreach (char c in value)
            {
                if (Char.IsNumber(c) || (c.Equals('.') && result.Count(x => x.Equals('.')) == 0))
                    result += c;
                else if (!c.Equals(' '))
                    return String.IsNullOrEmpty(result) ? 0 : Convert.ToInt32(result);
            }
            return String.IsNullOrEmpty(result) ? 0 : Convert.ToInt32(result);
        }

        /// <summary>
        /// Removes the new line.
        /// Remove /r/n in string
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns></returns>
        public static string RemoveNewLine(this string value) {
            return value != null ? value.Replace(Environment.NewLine, string.Empty) : null;
        }
    }
}