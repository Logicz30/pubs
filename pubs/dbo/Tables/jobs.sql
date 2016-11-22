CREATE TABLE [dbo].[jobs] (
    [job_id]   SMALLINT     IDENTITY (1, 1) NOT NULL,
    [job_desc] VARCHAR (50) DEFAULT ('New Position - title not formalized yet') NOT NULL,
    [min_lvl]  TINYINT      NOT NULL,
    [max_lvl]  TINYINT      NOT NULL,
    PRIMARY KEY CLUSTERED ([job_id] ASC),
    CHECK ([max_lvl]<=(250)),
    CHECK ([min_lvl]>=(10))
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Job ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'jobs',
    @level2type = N'COLUMN',
    @level2name = N'job_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Description of the job',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'jobs',
    @level2type = N'COLUMN',
    @level2name = N'job_desc'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Minimum level required to to do the job',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'jobs',
    @level2type = N'COLUMN',
    @level2name = N'min_lvl'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Maximum level required to to do the job',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'jobs',
    @level2type = N'COLUMN',
    @level2name = N'max_lvl'