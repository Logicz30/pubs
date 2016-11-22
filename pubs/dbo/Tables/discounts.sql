CREATE TABLE [dbo].[discounts] (
    [discounttype] VARCHAR (40)   NOT NULL,
    [stor_id]      CHAR (4)       NULL,
    [lowqty]       SMALLINT       NULL,
    [highqty]      SMALLINT       NULL,
    [discount]     DECIMAL (4, 2) NOT NULL,
    FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Store ID that the discount applies to',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'discounts',
    @level2type = N'COLUMN',
    @level2name = N'stor_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Type of discount',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'discounts',
    @level2type = N'COLUMN',
    @level2name = N'discounttype'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Discount percentage',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'discounts',
    @level2type = N'COLUMN',
    @level2name = N'discount'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Minimum quantity required for discount to apply',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'discounts',
    @level2type = N'COLUMN',
    @level2name = N'lowqty'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Maximum quantity for discount to apply',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'discounts',
    @level2type = N'COLUMN',
    @level2name = N'highqty'