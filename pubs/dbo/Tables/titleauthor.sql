CREATE TABLE [dbo].[titleauthor] (
    [au_id]      VARCHAR (11) NOT NULL,
    [title_id]   VARCHAR (6)  NOT NULL,
    [au_ord]     TINYINT      NULL,
    [royaltyper] INT          NULL,
    CONSTRAINT [UPKCL_taind] PRIMARY KEY CLUSTERED ([au_id] ASC, [title_id] ASC),
    FOREIGN KEY ([au_id]) REFERENCES [dbo].[authors] ([au_id]),
    FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
);


GO
CREATE NONCLUSTERED INDEX [auidind]
    ON [dbo].[titleauthor]([au_id] ASC);


GO
CREATE NONCLUSTERED INDEX [titleidind]
    ON [dbo].[titleauthor]([title_id] ASC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Author ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titleauthor',
    @level2type = N'COLUMN',
    @level2name = N'au_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Title ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titleauthor',
    @level2type = N'COLUMN',
    @level2name = N'title_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Position of the author in the list of authors',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titleauthor',
    @level2type = N'COLUMN',
    @level2name = N'au_ord'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Royalty percentage for the author on the publication',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titleauthor',
    @level2type = N'COLUMN',
    @level2name = N'royaltyper'