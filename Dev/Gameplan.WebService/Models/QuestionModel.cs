namespace Gameplan.WebService.Models
{
    public class QuestionModel
    {
        public int QuestionId { get; set; }
        public int Number { get; set; }
        public string QuestionText1 { get; set; }
        public string QuestionText2 { get; set; }
        public byte QuestionType { get; set; }
        public int LanguageId { get; set; }
    }
}