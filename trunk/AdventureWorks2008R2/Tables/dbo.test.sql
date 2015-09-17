SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[test](
	[col1] [int] NULL
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'prop1', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'test'
GO

EXEC sys.sp_addextendedproperty @name=N'prop2', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'test'
GO

EXEC sys.sp_addextendedproperty @name=N'prop3', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'test'
GO
