SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [HumanResources].[EmployeePayHistory](
	[BusinessEntityID] [int] NOT NULL,
	[RateChangeDate] [datetime] NOT NULL,
	[Rate] [money] NOT NULL,
	[PayFrequency] [tinyint] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeePayHistory_BusinessE
ntityID_RateChangeDate] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC,
	[RateChangeDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [HumanResources].[EmployeePayHistory]  WITH CHECK ADD  CONSTRAINT [CK_EmployeePayHistory_PayFrequ
ency] CHECK  (([PayFrequency]=(2) OR [PayFrequency]=(1)))
GO

ALTER TABLE [HumanResources].[EmployeePayHistory] CHECK CONSTRAINT [CK_EmployeePayHistory_PayFrequ
ency]
GO

ALTER TABLE [HumanResources].[EmployeePayHistory]  WITH CHECK ADD  CONSTRAINT [CK_EmployeePayHistory_Rate] CHECK  (([Rate]>=(6.50) AND [Rate]<=(200.00)))
GO

ALTER TABLE [HumanResources].[EmployeePayHistory] CHECK CONSTRAINT [CK_EmployeePayHistory_Rate]
GO

ALTER TABLE [HumanResources].[EmployeePayHistory] ADD  CONSTRAINT [DF_EmployeePayHistory_Modified
Date]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
