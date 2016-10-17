SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Nyomvonal_tetel](
	[nyomvonal_id] [int] NOT NULL,
	[nyomvonal_megallo_sorrend] [int] NOT NULL,
	[nyomvonal_megallo_sorszam] [int] NOT NULL,
	[kocsiall_id] [int] NOT NULL,
	[megallo_tipus] [char](1) NOT NULL,
	[megallo_km] [float] NOT NULL,
	[nyomvonal_km] [float] NOT NULL,
	[jarat_megallo_beteroszint] [int] NOT NULL,
	[jarat_megallo_korjarat_alternativ] [int] NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
	[pg_sorrend] [int] NULL,
	[menetido_perc] [float] NOT NULL,
	[jarat_korjarat_alternativ] [int] NULL,
	[dij_km] [float] NULL,
	[helyi_varoskod] [int] NULL,
	[utso_datum_tol] [datetime] NULL,
	[kieg] [int] NULL,
 CONSTRAINT [pix_nyomvonal_tetel__nyomvonal_id] PRIMARY KEY CLUSTERED 
(
	[nyomvonal_id] ASC,
	[nyomvonal_megallo_sorrend] ASC,
	[datum_tol] ASC,
	[megallo_km] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Nyomvonal_tetel]  WITH NOCHECK ADD  CONSTRAINT [FK_Nyomvonal_tetel_nyomvon] FOREIGN KEY([nyomvonal_id], [datum_tol])
REFERENCES [dbo].[nyomvon] ([nyomvon_id], [datum_tol])
NOT FOR REPLICATION 
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] CHECK CONSTRAINT [FK_Nyomvonal_tetel_nyomvon]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [nyomvonal_megallo_sorrend]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [nyomvonal_megallo_sorszam]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [kocsiall_id]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ('') FOR [megallo_tipus]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [megallo_km]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [nyomvonal_km]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [jarat_megallo_beteroszint]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((0)) FOR [jarat_megallo_korjarat_alternativ]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  DEFAULT ((1)) FOR [aktiv_e]
GO

ALTER TABLE [dbo].[Nyomvonal_tetel] ADD  CONSTRAINT [DF_Nyomvonal_tetel_menetido_perc]  DEFAULT ((0)) FOR [menetido_perc]
GO
