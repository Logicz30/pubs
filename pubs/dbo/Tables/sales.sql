CREATE TABLE [dbo].[sales] (
    [stor_id]  CHAR (4)     NOT NULL,
    [ord_num]  VARCHAR (20) NOT NULL,
    [ord_date] DATETIME     NOT NULL,
    [qty]      SMALLINT     NOT NULL,
    [payterms] VARCHAR (12) NOT NULL,
    [title_id] VARCHAR (6)  NOT NULL,
    CONSTRAINT [UPKCL_sales] PRIMARY KEY CLUSTERED ([stor_id] ASC, [ord_num] ASC, [title_id] ASC),
    FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id]),
    FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
);


GO
CREATE NONCLUSTERED INDEX [titleidind]
    ON [dbo].[sales]([title_id] ASC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Store ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'sales',
    @level2type = N'COLUMN',
    @level2name = N'stor_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Order Identifier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'sales',
    @level2type = N'COLUMN',
    @level2name = N'ord_num'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date of the Order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'sales',
    @level2type = N'COLUMN',
    @level2name = N'ord_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Quantity ordered',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'sales',
    @level2type = N'COLUMN',
    @level2name = N'qty'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Payment Terms',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'sales',
    @level2type = N'COLUMN',
    @level2name = N'payterms'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Title of the publication ordered',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'sales',
    @level2type = N'COLUMN',
    @level2name = N'title_id'