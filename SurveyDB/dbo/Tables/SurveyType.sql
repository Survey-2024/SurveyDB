CREATE TABLE [dbo].[SurveyType] (
    [SurveyTypeId] INT          IDENTITY (1, 1) NOT NULL,
    [Origin]       VARCHAR (50) NULL,
    CONSTRAINT [PK_SurveyType] PRIMARY KEY CLUSTERED ([SurveyTypeId] ASC)
);

