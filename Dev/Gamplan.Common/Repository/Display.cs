using Gameplan.Common.Configuration;

namespace Gameplan.Common.Repository {
    /// <summary>
    /// Class Display
    /// </summary>
    public class Display {
        /// <summary>
        /// Gets the name display.
        /// </summary>
        /// <param name="firstName">The first name.</param>
        /// <param name="lastName">The last name.</param>
        /// <param name="nameDisplayFormatId">The name display format id.</param>
        /// <param name="titleId">The title id.</param>
        /// <param name="langId">The lang id.</param>
        /// <returns>System.String.</returns>
        public static string GetNameDisplay(string firstName, string lastName) {
            //var _nameDisplayFormatId = nameDisplayFormatId ?? 1;
            //var _titleId = titleId ?? 1;
            //var _langId = langId ?? Default.DefaultLanguage;
            
           // var repository = new CommonRepository();
            //var format = repository.GetNameFormat(_nameDisplayFormatId);
            //var title = repository.GetTitle(_titleId, _langId);

            var displayName = lastName + " " + firstName;
            //displayName = displayName.Replace("Title", title);

            return displayName;
        }
    }
}