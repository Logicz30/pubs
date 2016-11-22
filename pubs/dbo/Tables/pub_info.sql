CREATE TABLE [dbo].[pub_info] (
    [pub_id]  CHAR (4) NOT NULL,
    [logo]    IMAGE    NULL,
    [pr_info] TEXT     NULL,
    CONSTRAINT [UPKCL_pubinfo] PRIMARY KEY CLUSTERED ([pub_id] ASC),
    FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Publisher ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'pub_info',
    @level2type = N'COLUMN',
    @level2name = N'pub_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Binary data representing a jpeg image of the Publisher''s logo',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'pub_info',
    @level2type = N'COLUMN',
    @level2name = N'logo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Information regarding the publisher',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'pub_info',
    @level2type = N'COLUMN',
    @level2name = N'pr_info'