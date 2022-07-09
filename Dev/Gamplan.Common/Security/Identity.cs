using System;
using System.Collections.Generic;

namespace Gameplan.Common.Security {
    /// <summary>
    /// Class Identity
    /// </summary>
    public class Identity {
        /// <summary>
        /// Gets or sets the id.
        /// </summary>
        /// <value>The id.</value>
        public int UserId { get; set; }

        /// <summary>
        /// Gets or sets the type of the user.
        /// </summary>
        /// <value>The type of the user.</value>
        public string UserType { get; set; }

        /// <summary>
        /// Gets or sets the lang id.
        /// </summary>
        /// <value>The lang id.</value>
        public int LangId { get; set; }

        /// <summary>
        /// Gets or sets the partner id.
        /// </summary>
        /// <value>The partner id.</value>
        public int PartnerId { get; set; }

        /// <summary>
        /// Gets or sets the module id.
        /// </summary>
        /// <value>The module id.</value>
        public int ModuleId { get; set; }

        /// <summary>
        /// Gets or sets the company id.
        /// </summary>
        /// <value>The company id.</value>
        public int? CompanyId { get; set; }

        /// <summary>
        /// Gets or sets the workshop id.
        /// </summary>
        /// <value>The workshop id.</value>
        public int? WorkshopId { get; set; }

        /// <summary>
        /// Gets or sets the roles.
        /// </summary>
        /// <value>The roles.</value>
        public IList<Role> Roles { get; set; }

        /// <summary>
        /// Gets or sets the working as role.
        /// </summary>
        /// <value>The working as role.</value>
        public int? WorkingAsRole { get; set; }

        /// <summary>
        /// Gets or sets the name of the user.
        /// </summary>
        /// <value>The name of the user.</value>
        public string UserName { get; set; }

        /// <summary>
        /// Gets or sets the answer status.
        /// </summary>
        /// <value>The answer status.</value>
        public int AnswerStatus { get; set; }

        /// <summary>
        /// Gets or sets the report type id.
        /// </summary>
        /// <value>The report type id.</value>
        public int? ReportTypeId { get; set; }

        /// <summary>
        /// Gets or sets the survey id.
        /// </summary>
        /// <value>The survey id.</value>
        public int? SurveyId { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this instance has demo graphic.
        /// </summary>
        /// <value><c>true</c> if this instance has demo graphic; otherwise, <c>false</c>.</value>
        public bool HasDemoGraphic { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [selected respondents].
        /// </summary>
        /// <value><c>true</c> if [selected respondents]; otherwise, <c>false</c>.</value>
        public bool SelectedRespondents { get; set; }

        /// <summary>
        /// Gets or sets the participant id.
        /// </summary>
        /// <value>The participant id.</value>
        public int? ParticipantId { get; set; }

        /// <summary>
        /// Gets or sets the type of the respondent.
        /// </summary>
        /// <value>The type of the respondent.</value>
        public int? RespondentType { get; set; }


        /// <summary>
        /// Gets or sets the score status.
        /// </summary>
        /// <value>The score status.</value>
        public int ScoreStatus { get; set; }

        /// <summary>
        /// Gets or sets the survey date.
        /// </summary>
        /// <value>The survey date.</value>
        public DateTime SurveyDate { get; set; }

        /// <summary>
        /// Gets or sets the listener answer status.
        /// </summary>
        /// <value>
        /// The listener answer status.
        /// </value>
        public int? ListenerAnswerStatus { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is survey closed.
        /// Current only apply for CB module
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is survey closed; otherwise, <c>false</c>.
        /// </value>
        public bool IsSurveyClosed { get; set; }
    }
}