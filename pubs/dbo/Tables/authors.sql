CREATE TABLE [dbo].[authors] (
    [au_id]     VARCHAR (11) NOT NULL,
    [au_lname]  VARCHAR (40) NOT NULL,
    [au_fname]  VARCHAR (20) NOT NULL,
    [phone]     CHAR (12)    DEFAULT ('UNKNOWN') NOT NULL,
    [address]   VARCHAR (40) NULL,
    [city]      VARCHAR (20) NULL,
    [state]     CHAR (2)     NULL,
    [zip]       CHAR (5)     NULL,
    [contract]  BIT          NOT NULL,
    CONSTRAINT [UPKCL_auidind] PRIMARY KEY CLUSTERED ([au_id] ASC),
    CHECK ([au_id] like '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'),
    CHECK ([zip] like '[0-9][0-9][0-9][0-9][0-9]')
);


GO
CREATE NONCLUSTERED INDEX [aunmind]
    ON [dbo].[authors]([au_lname] ASC, [au_fname] ASC);


GO

CREATE TRIGGER [dbo].[Trigger_authors]
    ON [dbo].[authors]
    FOR DELETE, INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON
    END
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Author ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'au_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Author surname',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'au_lname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Author forename',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'au_fname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Telephone number including dialing code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'phone'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'First line of address ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'address'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'City or town ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'city'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'County or state',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'state'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Postcode or zipccode',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'zip'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Flag indicating whether the author is "in contract"',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'authors',
    @level2type = N'COLUMN',
    @level2name = N'contract'