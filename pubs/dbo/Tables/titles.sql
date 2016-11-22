CREATE TABLE [dbo].[titles] (
    [title_id]  VARCHAR (6)   NOT NULL,
    [title]     VARCHAR (80)  NOT NULL,
    [type]      CHAR (12)     DEFAULT ('UNDECIDED') NOT NULL,
    [pub_id]    CHAR (4)      NULL,
    [price]     MONEY         NULL,
    [advance]   MONEY         NULL,
    [royalty]   INT           NULL,
    [ytd_sales] INT           NULL,
    [notes]     VARCHAR (200) NULL,
    [pubdate]   DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [UPKCL_titleidind] PRIMARY KEY CLUSTERED ([title_id] ASC),
    FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
);


GO
CREATE NONCLUSTERED INDEX [titleind]
    ON [dbo].[titles]([title] ASC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Title ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'title_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name of the publication',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'title'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Type of publication',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Publisher ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'pub_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Price in pounds sterling',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'price'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Advance to be paid to the authors',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'advance'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Royalty payment to the authors',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'royalty'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Year to date sales amount',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'ytd_sales'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Notes relating to the publcation',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'notes'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Publication date',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'titles',
    @level2type = N'COLUMN',
    @level2name = N'pubdate'