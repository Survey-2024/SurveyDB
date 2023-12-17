CREATE TABLE [dbo].[SurveyAnswer] (
    [SurveyAnswerId]   INT          IDENTITY (1, 1) NOT NULL,
    [SurveyQuestionId] INT          NOT NULL,
    [SurveyId]         INT          NOT NULL,
    [AnswerText]       VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_SurveyAnswer] PRIMARY KEY CLUSTERED ([SurveyAnswerId] ASC),
    CONSTRAINT [FK_SurveyAnswer_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [dbo].[Survey] ([SurveyId]),
    CONSTRAINT [FK_SurveyAnswer_SurveyQuestion] FOREIGN KEY ([SurveyQuestionId]) REFERENCES [dbo].[SurveyQuestion] ([SurveyQuestionId])
);

