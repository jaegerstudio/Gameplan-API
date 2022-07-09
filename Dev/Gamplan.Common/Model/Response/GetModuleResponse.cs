using Gameplan.Common.Model;

namespace Gameplan.Common.Response {
    /// <summary>
    /// Class GetModuleResponse
    /// </summary>
    public class GetModuleResponse : BaseResponse {
        /// <summary>
        /// Gets or sets the name of the module.
        /// </summary>
        /// <value>The name of the module.</value>
        public string ModuleName { get; set; }
        /// <summary>
        /// Gets or sets the module logo path.
        /// </summary>
        /// <value>The module logo path.</value>
        public string ModuleLogoPath { get; set; }
    }
}