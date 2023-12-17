CREATE TABLE [dbo].[SurveyStatus] (
    [SurveyStatusId] INT          IDENTITY (1, 1) NOT NULL,
    [SurveyStatus]   VARCHAR (50) NULL,
    CONSTRAINT [PK_SurveyStatus] PRIMARY KEY CLUSTERED ([SurveyStatusId] ASC)
);

