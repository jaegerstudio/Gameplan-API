using Gameplan.Common.Configuration;

namespace Gameplan.Common.Utilities {
    /// <summary>
    /// Class Navigation
    /// </summary>
    public class Navigation {

        /// <summary>
        /// Gets the module action.
        /// </summary>
        /// <param name="host">The host.</param>
        /// <param name="moduleId">The module id.</param>
        /// <returns>System.String.</returns>
        public static string GetModuleAction(string host, int moduleId) {
            string action;
            Router.ModuleActions.TryGetValue(moduleId, out action);
            //if can not find.
            if (string.IsNullOrEmpty(action)) {
                return "#";
            }

            return string.Format("{0}/{1}", "", action);
            //TODO: Please use the host if need to redirect to cross webapp.
        }

    }
}