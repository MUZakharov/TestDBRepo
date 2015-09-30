SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [schema1].[TestTable_Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[QtyAvailable] [int] NULL,
	[UnitPrice] [money] NULL,
	[InventoryValue]  AS ([QtyAvailable]*[UnitPrice]),
	[ProductAttributes] [xml] NOT NULL,
	[LastChangeUniqueID] [timestamp] NOT NULL,
	[PseudoUniqueIDThatCanBeDuplicated] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LastChangeUniqueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Create triggers
CREATE TRIGGER [schema1].[TestTable_Trigger_INSERT] ON [schema1].[TestTable_Products] FOR INSERT
AS
IF EXISTS (SELECT 1
           FROM schema1.TestTable_Products
           WHERE PseudoUniqueIDThatCanBeDuplicated IN (SELECT PseudoUniqueIDThatCanBeDuplicated
                                                          FROM INSERTED)
          )
BEGIN
    PRINT 'You attempted to insert a duplicate identifier value.'
    ROLLBACK TRANSACTION
END


GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [schema1].[TestTable_Trigger_UPDATE] ON [schema1].[TestTable_Products] FOR UPDATE
AS
IF EXISTS (SELECT 1
           FROM schema1.TestTable_Products AS p
                JOIN INSERTED AS i
                ON p.ProductID = i.ProductID
                    AND p.QtyAvailable= i.QtyAvailable
                    AND p.UnitPrice = i.UnitPrice
                    AND p.PseudoUniqueIDThatCanBeDuplicated = i.PseudoUniqueIDThatCanBeDuplicated
          )
BEGIN
    PRINT 'You attempted to update to a duplicate value product.'
    ROLLBACK TRANSACTION
END


GO

ALTER TABLE [schema1].[TestTable_Products] ADD  DEFAULT (newid()) FOR [PseudoUniqueIDThatCanBeDuplicated]
GO
