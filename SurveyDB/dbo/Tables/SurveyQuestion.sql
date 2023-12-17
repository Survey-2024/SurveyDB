CREATE TABLE [dbo].[SurveyQuestion] (
    [SurveyQuestionId] INT          IDENTITY (1, 1) NOT NULL,
    [SurveyTypeId]     INT          NOT NULL,
    [QuestionText]     VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_SurveyQuestion] PRIMARY KEY CLUSTERED ([SurveyQuestionId] ASC),
    CONSTRAINT [FK_SurveyQuestion_SurveyType] FOREIGN KEY ([SurveyTypeId]) REFERENCES [dbo].[SurveyType] ([SurveyTypeId])
);

