using Gameplan.Common.Model;

namespace Gameplan.Common.Request {
    /// <summary>
    /// Class GetModuleRequest
    /// </summary>
    public class GetModuleRequest : BaseRequest {
        public int ModuleId { get; set; }
    }
}