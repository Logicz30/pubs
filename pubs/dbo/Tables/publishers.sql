CREATE TABLE [dbo].[publishers] (
    [pub_id]   CHAR (4)     NOT NULL,
    [pub_name] VARCHAR (40) NULL,
    [city]     VARCHAR (20) NULL,
    [state]    CHAR (2)     NULL,
    [country]  VARCHAR (30) DEFAULT ('USA') NULL,
    CONSTRAINT [UPKCL_pubind] PRIMARY KEY CLUSTERED ([pub_id] ASC),
    CHECK ([pub_id]='1756' OR [pub_id]='1622' OR [pub_id]='0877' OR [pub_id]='0736' OR [pub_id]='1389' OR [pub_id] like '99[0-9][0-9]')
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Publisher ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'publishers',
    @level2type = N'COLUMN',
    @level2name = N'pub_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name of the publisher',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'publishers',
    @level2type = N'COLUMN',
    @level2name = N'pub_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Town or city in which the publisher is located',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'publishers',
    @level2type = N'COLUMN',
    @level2name = N'city'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'State in which the publisher is located',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'publishers',
    @level2type = N'COLUMN',
    @level2name = N'state'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Country in which the publisher is located',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'publishers',
    @level2type = N'COLUMN',
    @level2name = N'country'