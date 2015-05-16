CREATE TABLE [dbo].[employee] (
    [emp_id]    CHAR (9)        NOT NULL,
    [fname]     VARCHAR (20)    NOT NULL,
    [minit]     CHAR (1)        NULL,
    [lname]     VARCHAR (30)    NOT NULL,
    [job_id]    SMALLINT        DEFAULT ((1)) NOT NULL,
    [job_lvl]   TINYINT         DEFAULT ((10)) NULL,
    [pub_id]    CHAR (4)        DEFAULT ('9952') NOT NULL,
    [hire_date] DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_emp_id] PRIMARY KEY NONCLUSTERED ([emp_id] ASC),
    CONSTRAINT [CK_emp_id] CHECK ([emp_id] like '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' OR [emp_id] like '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),
    FOREIGN KEY ([job_id]) REFERENCES [dbo].[jobs] ([job_id]),
    FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
);


GO
CREATE CLUSTERED INDEX [employee_ind]
    ON [dbo].[employee]([lname] ASC, [fname] ASC, [minit] ASC);


GO
CREATE TRIGGER employee_insupd
ON employee
FOR INSERT, UPDATE
AS
	--Get the range of level for this job type from the jobs table.
	DECLARE	@min_lvl TINYINT,
			@max_lvl TINYINT,
			@emp_lvl TINYINT,
			@job_id SMALLINT
	SELECT
		@min_lvl = min_lvl,
		@max_lvl = max_lvl,
		@emp_lvl = i.job_lvl,
		@job_id = i.job_id
	FROM	employee e,
			jobs j,
			INSERTED i
	WHERE e.emp_id = i.emp_id
	AND i.job_id = j.job_id
	IF (@job_id = 1)
		AND (@emp_lvl <> 10)
	BEGIN
		RAISERROR ('Job id 1 expects the default level of 10.', 16, 1)
		ROLLBACK TRANSACTION
	END
	ELSE
	IF NOT (@emp_lvl BETWEEN @min_lvl AND @max_lvl)
	BEGIN
		RAISERROR ('The level for job_id:%d should be between %d and %d.',
		16, 1, @job_id, @min_lvl, @max_lvl)
		ROLLBACK TRANSACTION
	END