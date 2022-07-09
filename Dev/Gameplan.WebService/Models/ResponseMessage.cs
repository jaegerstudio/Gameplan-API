namespace Gameplan.WebService.Models
{
    public class ResponseMessage
    {
        public int Code { get; set; }
        public string Message { get; set; }
        public long UserExpDate { get; set; }
        public object Result { get; set; }
    }
}