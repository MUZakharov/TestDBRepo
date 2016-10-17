SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gk_torzs](
	[FSZG_ID] [int] NOT NULL,
	[Adomodul] [char](10) NOT NULL,
	[Kezeloegyseg] [char](10) NOT NULL,
	[Rendszam] [char](6) NOT NULL,
	[VolanKod] [char](9) NOT NULL,
	[Jel] [bit] NOT NULL,
	[IP] [char](15) NOT NULL,
	[Telszam] [char](9) NOT NULL,
	[gk_tipus] [int] NOT NULL,
	[gyartm_tipus] [int] NOT NULL,
	[jarmufajta] [char](1) NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
	[Ipari_PC] [char](10) NOT NULL,
	[tank_liter] [int] NOT NULL,
	[szonda] [bit] NOT NULL,
	[norma_ua] [decimal](4, 2) NOT NULL,
	[norma_futes] [decimal](4, 2) NOT NULL,
	[norma_klima] [decimal](4, 2) NOT NULL,
	[norma_csak_futes] [decimal](4, 2) NOT NULL,
	[norma_alapjarat] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_gk_torzs] PRIMARY KEY NONCLUSTERED 
(
	[FSZG_ID] ASC,
	[datum_tol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs2_Ipari_PC]  DEFAULT ('') FOR [Ipari_PC]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_tank_liter]  DEFAULT ((0)) FOR [tank_liter]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_szonda]  DEFAULT ((0)) FOR [szonda]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_ua_norma]  DEFAULT ((0)) FOR [norma_ua]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_norma_futes]  DEFAULT ((0)) FOR [norma_futes]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_norma_klima]  DEFAULT ((0)) FOR [norma_klima]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_norma_csak_futes]  DEFAULT ((0)) FOR [norma_csak_futes]
GO

ALTER TABLE [dbo].[gk_torzs] ADD  CONSTRAINT [DF_gk_torzs_norma_alapjarat]  DEFAULT ((0)) FOR [norma_alapjarat]
GO
