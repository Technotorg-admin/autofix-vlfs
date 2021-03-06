CREATE TABLE dbo.VLFAutoFix(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DBName] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CurrentVLFCount] [int] NOT NULL,
	[LogFileSizeMBs] [int] NOT NULL,
	[LogDate] [datetime] NOT NULL,
	CONSTRAINT [PK_TLogVLFAutoFix] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) 
) 
GO
 
ALTER TABLE dbo.[VLFAutoFix] ADD CONSTRAINT [DF_VLFAutoFix_LogDate] DEFAULT (getdate()) FOR [LogDate]
GO