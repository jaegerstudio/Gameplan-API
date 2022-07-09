using System.Collections.Generic;

namespace Gameplan.Common.Configuration {
    /// <summary>
    /// Class Router
    /// </summary>
    public class Router {

        /// <summary>
        /// Gets the module actions.
        /// </summary>
        /// <value>The module actions.</value>
        public static Dictionary<int, string> ModuleActions {
            get {
                var moduleActions = new Dictionary<int, string>();

                //add new dicts Module - Screen table here.
                //--------------------------------------------\\
                //Direct Leadership.
                moduleActions.Add(88, "DL/Admin");
                //RS.
                moduleActions.Add(89, "RS/Admin");
                //SL.
                moduleActions.Add(90, "SL/Admin");
                //PC
                moduleActions.Add(04, "PC/Admin");
                //CB
                moduleActions.Add(85, "CB/Admin");
                //LE
                moduleActions.Add(84, "LE/Admin");


                //-------------------------------------------------\\
                //fn return.
                return moduleActions;
            }
        }
    }
}