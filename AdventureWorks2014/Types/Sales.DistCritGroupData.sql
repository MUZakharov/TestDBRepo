CREATE TYPE [Sales].[DistCritGroupData] AS TABLE(
	[DistCritTypeId] [int] NOT NULL,
	[ItemAction] [int] NOT NULL,
	[ObjectId] [int] NOT NULL,
	[OperatorType] [int] NOT NULL,
	INDEX [CIX] CLUSTERED 
(
	[ObjectId] ASC,
	[OperatorType] ASC
),
	PRIMARY KEY NONCLUSTERED 
(
	[DistCritTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF),
	UNIQUE NONCLUSTERED 
(
	[DistCritTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
