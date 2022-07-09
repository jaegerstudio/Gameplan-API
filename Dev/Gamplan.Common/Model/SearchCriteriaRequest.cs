namespace Gameplan.Common.Model {
    /// <summary>
    /// Class SearchCriteriaRequest
    /// </summary>
    public class SearchCriteriaRequest : BaseRequest {
        /// <summary>
        /// Gets or sets the index of the page.
        /// </summary>
        /// <value>The index of the page.</value>
        public int PageIndex { get; set; }

        /// <summary>
        /// Gets or sets the size of the page.
        /// </summary>
        /// <value>The size of the page.</value>
        public int PageSize { get; set; }

        /// <summary>
        /// Gets or sets the sort column.
        /// </summary>
        /// <value>The sort column.</value>
        public string SortColumn { get; set; }

        /// <summary>
        /// Gets or sets the type of the sort.
        /// </summary>
        /// <value>The type of the sort.</value>
        public string SortType { get; set; }

     
    }
}