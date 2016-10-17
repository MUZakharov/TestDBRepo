SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nyomvon](
	[nyomvon_id] [int] NOT NULL,
	[vonal_id] [char](5) NOT NULL,
	[nyomvonal] [char](6) NOT NULL,
	[helyi_nyomvonal] [nchar](10) NULL,
	[nyomvon_nev] [varchar](100) NOT NULL,
	[Vv_kod] [char](2) NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
	[irany] [nchar](1) NULL,
	[dijszabas_tipus] [int] NOT NULL,
	[dij_vonal] [int] NULL,
 CONSTRAINT [PK_nyomvon] PRIMARY KEY CLUSTERED 
(
	[nyomvon_id] ASC,
	[datum_tol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
