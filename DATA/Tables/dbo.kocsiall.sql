SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[kocsiall](
	[kocsiall_id] [int] NOT NULL,
	[foldhely_id] [int] NOT NULL,
	[kocsiall_szam] [char](3) NOT NULL,
	[kocsiall_gps_x] [float] NOT NULL,
	[kocsiall_gps_y] [float] NOT NULL,
	[kocsiall_gps_z] [real] NOT NULL,
	[idegenkod] [char](15) NOT NULL,
	[idegenkod2] [char](15) NOT NULL,
	[mozgasserult_e] [bit] NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
	[utso_datumtol] [datetime] NULL,
 CONSTRAINT [PK_kocsiall2] PRIMARY KEY CLUSTERED 
(
	[kocsiall_id] ASC,
	[datum_tol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[kocsiall] ADD  CONSTRAINT [DF_kocsiall_mozgasserult_e]  DEFAULT ((0)) FOR [mozgasserult_e]
GO
