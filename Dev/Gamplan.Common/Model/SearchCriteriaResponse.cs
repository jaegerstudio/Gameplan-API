using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Gameplan.Common.Model {
    /// <summary>
    /// Class SearchCriteriaResponse
    /// </summary>
    public class SearchCriteriaResponse : BaseResponse {
        /// <summary>
        /// Gets or sets the total row count.
        /// </summary>
        /// <value>The total row count.</value>
        public int TotalRowCount { get; set; }
    }
}