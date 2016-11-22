CREATE TABLE [dbo].[roysched] (
    [title_id] VARCHAR (6) NULL,
    [lorange]  INT         NULL,
    [hirange]  INT         NULL,
    [royalty]  INT         NULL,
    FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
);


GO
CREATE NONCLUSTERED INDEX [titleidind]
    ON [dbo].[roysched]([title_id] ASC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Book Title ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'roysched',
    @level2type = N'COLUMN',
    @level2name = N'title_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Lower range ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'roysched',
    @level2type = N'COLUMN',
    @level2name = N'lorange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Upper range',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'roysched',
    @level2type = N'COLUMN',
    @level2name = N'hirange'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'royalty amount',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'roysched',
    @level2type = N'COLUMN',
    @level2name = N'royalty'