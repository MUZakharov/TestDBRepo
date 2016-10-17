SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soforok](
	[driver_id] [int] NOT NULL,
	[driver_nev] [char](40) NOT NULL,
	[driver_kod] [int] NOT NULL,
	[driver_tipus] [int] NOT NULL,
	[Szolgalati_hely] [varchar](10) NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
 CONSTRAINT [PK_soforok] PRIMARY KEY CLUSTERED 
(
	[driver_id] ASC,
	[datum_tol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[soforok] ADD  CONSTRAINT [DF__soforok__driver___300424B4]  DEFAULT ('') FOR [driver_nev]
GO

ALTER TABLE [dbo].[soforok] ADD  CONSTRAINT [DF__soforok__driver___30F848ED]  DEFAULT ((0)) FOR [driver_kod]
GO

ALTER TABLE [dbo].[soforok] ADD  CONSTRAINT [DF__soforok__driver___31EC6D26]  DEFAULT ((1)) FOR [driver_tipus]
GO

ALTER TABLE [dbo].[soforok] ADD  CONSTRAINT [DF_soforok_szhely]  DEFAULT ('') FOR [Szolgalati_hely]
GO

ALTER TABLE [dbo].[soforok] ADD  CONSTRAINT [DF__soforok__aktiv_e__32E0915F]  DEFAULT ((1)) FOR [aktiv_e]
GO
