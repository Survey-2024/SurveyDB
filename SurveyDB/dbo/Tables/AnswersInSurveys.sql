CREATE TABLE [dbo].[AnswersInSurveys] (
    [AnswersInSurveysId] INT IDENTITY (1, 1) NOT NULL,
    [SurveyAnswerId]     INT NOT NULL,
    [SurveyId]           INT NOT NULL,
    CONSTRAINT [PK_AnswersInSurveys] PRIMARY KEY CLUSTERED ([AnswersInSurveysId] ASC),
    CONSTRAINT [FK_AnswersInSurveys_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [dbo].[Survey] ([SurveyId]),
    CONSTRAINT [FK_AnswersInSurveys_SurveyAnswer] FOREIGN KEY ([SurveyAnswerId]) REFERENCES [dbo].[SurveyAnswer] ([SurveyAnswerId])
);

