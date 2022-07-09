using System;

namespace Gameplan.WebService.Models
{
    public class DbVersionModel
    {
        public string TableName { get; set; }
        public Guid RecordId { get; set; }
        public Guid RecordSyncId { get; set; }
        public string Action { get; set; }
        public long Version { get; set; }
        public object Data { get; set; }
        public long CreateDate { get; set; }
    }
}