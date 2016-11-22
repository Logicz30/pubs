CREATE TABLE [dbo].[regions] (
    [Id]         INT          NOT NULL,
    [RegionName] VARCHAR (25) NULL,
    CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Region Name',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'regions',
    @level2type = N'COLUMN',
    @level2name = N'RegionName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Region ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'regions',
    @level2type = N'COLUMN',
    @level2name = N'Id'