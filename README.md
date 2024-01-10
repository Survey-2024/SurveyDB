erDiagram
      
"dbo.SurveyType" {
    int SurveyTypeId "PK"
          varchar(50) Origin ""
          
}
"dbo.SurveyStatus" {
    int SurveyStatusId "PK"
          varchar(50) SurveyStatus ""
          
}
"dbo.Survey" {
    int SurveyId "PK"
          int SurveyTypeId "FK"
          int SurveyStatusId "FK"
          datetimeoffset CreatedDate ""
          datetimeoffset ModifiedDate ""
          
}
"dbo.SurveyQuestion" {
    int SurveyQuestionId "PK"
          int SurveyTypeId "FK"
          varchar(50) QuestionText ""
          
}
"dbo.SurveyAnswer" {
    int SurveyAnswerId "PK"
          int SurveyQuestionId "FK"
          int SurveyId "FK"
          varchar(50) AnswerText ""
          
}
"dbo.AnswersInSurveys" {
    int AnswersInSurveysId "PK"
          int SurveyAnswerId "FK"
          int SurveyId "FK"
          
}
      "dbo.Survey" ||--|{ "dbo.SurveyType": "SurveyTypeId"
"dbo.Survey" ||--|{ "dbo.SurveyStatus": "SurveyStatusId"
"dbo.SurveyQuestion" ||--|{ "dbo.SurveyType": "SurveyTypeId"
"dbo.SurveyAnswer" ||--|{ "dbo.SurveyQuestion": "SurveyQuestionId"
"dbo.SurveyAnswer" ||--|{ "dbo.Survey": "SurveyId"
"dbo.AnswersInSurveys" ||--|{ "dbo.SurveyAnswer": "SurveyAnswerId"
"dbo.AnswersInSurveys" ||--|{ "dbo.Survey": "SurveyId"
