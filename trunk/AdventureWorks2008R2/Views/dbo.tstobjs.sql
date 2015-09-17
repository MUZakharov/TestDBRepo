SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW tstobjs AS 
SELECT s.id, s.xtype, s.uid, s.info, s.replinfo FROM sysobjects AS s
GO
