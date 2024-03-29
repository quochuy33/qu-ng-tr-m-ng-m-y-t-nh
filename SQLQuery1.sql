use [AdventureWorks2019]
go

SET ANSI_PADDING ON

go

CREATE NONCLUSTERED INDEX [_dta_index_Person_6_274100017__K1_K7_K5] ON [Person].[Person]
(
	[BusinessEntityID] ASC,
	[LastName] ASC,
	[FirstName] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = ON) ON [PRIMARY]
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderHeader_6_1922105888__K1_K12] ON [Sales].[SalesOrderHeader]
(
	[SalesOrderID] ASC,
	[SalesPersonID] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = ON) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_1810105489_1_5] ON [Sales].[SalesOrderDetail]([SalesOrderID], [ProductID])
WITH AUTO_DROP = OFF
go

CREATE STATISTICS [_dta_stat_482100758_3_1] ON [Production].[Product]([ProductNumber], [ProductID])
WITH AUTO_DROP = OFF
go

