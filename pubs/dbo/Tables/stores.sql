CREATE TABLE [dbo].[stores] (
    [stor_id]      CHAR (4)     NOT NULL,
    [stor_name]    VARCHAR (40) NULL,
    [stor_address] VARCHAR (40) NULL,
    [city]         VARCHAR (20) NULL,
    [state]        CHAR (2)     NULL,
    [zip]          CHAR (5)     NULL,
    CONSTRAINT [UPK_storeid] PRIMARY KEY CLUSTERED ([stor_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Store ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'stores',
    @level2type = N'COLUMN',
    @level2name = N'stor_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name of the store',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'stores',
    @level2type = N'COLUMN',
    @level2name = N'stor_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Address of the store',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'stores',
    @level2type = N'COLUMN',
    @level2name = N'stor_address'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'City in which the store is located',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'stores',
    @level2type = N'COLUMN',
    @level2name = N'city'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'State in which the store is located',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'stores',
    @level2type = N'COLUMN',
    @level2name = N'state'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zip or postal code of the store',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'stores',
    @level2type = N'COLUMN',
    @level2name = N'zip'