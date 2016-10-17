SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[jarat](
	[jarat_id] [int] NOT NULL,
	[jarat_szam] [char](4) NOT NULL,
	[nyomvon_id] [int] NOT NULL,
	[jarat_szam] [char](4) NOT NULL,
	[jarat_indulas] [char](6) NOT NULL,
	[jarat_tureshatar] [int] NOT NULL,
	[jarat_helyi_is] [bit] NOT NULL,
	[jarat_korjarat_e] [bit] NOT NULL,
	[kozlekedesi_jel] [char](5) NOT NULL,
	[aktiv_e] [bit] NOT NULL,
	[vonalvezetes] [int] NOT NULL,
	[menetido] [int] NOT NULL,
	[datum_tol] [smalldatetime] NOT NULL,
	[datum_ig] [smalldatetime] NULL,
	[uzletag] [varchar](6) NOT NULL,
	[volan_id] [varchar](6) NOT NULL,
	[vonal_id] [varchar](5) NULL,
	[kieg] [int] NULL,
	[Dijszabas_tipus] [int] NOT NULL,
 CONSTRAINT [PK_jarat] PRIMARY KEY CLUSTERED 
(
	[jarat_id] ASC,
	[datum_tol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ('') FOR [jarat_szam]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [jarat_tureshatar]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [jarat_helyi_is]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [jarat_korjarat_e]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ('') FOR [kozlekedesi_jel]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((1)) FOR [aktiv_e]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [vonalvezetes]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [menetido]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ('') FOR [uzletag]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ('') FOR [volan_id]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [kieg]
GO

ALTER TABLE [dbo].[jarat] ADD  CONSTRAINT [DF_jarat_Dijszabas_tipus]  DEFAULT ((0)) FOR [Dijszabas_tipus]
GO

ALTER TABLE [dbo].[jarat] ADD  CONSTRAINT [DF_jarat_alacsonypadlos]  DEFAULT ((0)) FOR [alacsonypadlos]
GO

ALTER TABLE [dbo].[jarat] ADD  DEFAULT ((0)) FOR [kieg]
GO
