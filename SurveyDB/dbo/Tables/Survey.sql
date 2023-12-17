CREATE TABLE [dbo].[Survey] (
    [SurveyId]       INT IDENTITY (1, 1) NOT NULL,
    [SurveyTypeId]   INT NOT NULL,
    [SurveyStatusId] INT NOT NULL,
    CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED ([SurveyId] ASC),
    CONSTRAINT [FK_Survey_SurveyStatus] FOREIGN KEY ([SurveyStatusId]) REFERENCES [dbo].[SurveyStatus] ([SurveyStatusId]),
    CONSTRAINT [FK_Survey_SurveyType] FOREIGN KEY ([SurveyTypeId]) REFERENCES [dbo].[SurveyType] ([SurveyTypeId])
);

