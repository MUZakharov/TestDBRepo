SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[foldhely](
	[foldhely_id] [int] NOT NULL,
	[foldhely_nev] [varchar](50) NULL,
	[foldhely_rnev] [char](20) NOT NULL,
	[foldhely_zona] [int] NOT NULL,
	[foldhely_gps_x] [float] NOT NULL,
	[foldhely_gps_y] [float] NOT NULL,
	[foldhely_gps_z] [float] NOT NULL,
	[felirat_id] [int] NOT NULL,
	[hang_id] [int] NOT NULL,
	[WAP_kod] [char](10) NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
	[gyakorisag] [smallint] NOT NULL,
	[foldhely_helyi_nev] [nvarchar](50) NOT NULL,
	[veg_nev] [varchar](50) NULL,
	[megallo_kod] [varchar](4) NOT NULL,
	[PihAlk] [bit] NULL,
 CONSTRAINT [PK_foldhely] PRIMARY KEY CLUSTERED 
(
	[foldhely_id] ASC,
	[datum_tol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[foldhely] ADD  CONSTRAINT [DF_foldhely_foldhely_rnev_2]  DEFAULT ('') FOR [foldhely_helyi_nev]
GO
