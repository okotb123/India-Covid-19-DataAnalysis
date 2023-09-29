SELECT [ProductKey]
      ,(OrderDateKey)
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
--      ,[PromotionKey]
--      ,[CurrencyKey]
--      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
--      ,[SalesOrderLineNumber]
--      ,[RevisionNumber]
--      ,[OrderQuantity]
--      ,[UnitPrice]
--      ,[ExtendedAmount]
--      ,[UnitPriceDiscountPct]
--      ,[DiscountAmount]
--      ,[ProductStandardCost]
--      ,[TotalProductCost]
      ,[SalesAmount]
--      ,[TaxAmt]
--      ,[Freight]
--     ,[CarrierTrackingNumber]
--      ,[CustomerPONumber]
--      ,[OrderDate]
--     ,[DueDate]
--      ,[ShipDate]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  Where 
  Left (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures We Always only Bring two Years of date from  extraction
  
Order By 
	OrderDateKey
