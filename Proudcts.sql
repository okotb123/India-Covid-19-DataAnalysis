SELECT 
	   p.[ProductKey]
      ,p.[ProductAlternateKey] As ProductItemCode
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] As Product_Name
	  ,ps.EnglishProductSubcategoryName As Subcategory
	  ,pc.EnglishProductCategoryName As ProductCatrgory
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--     ,[FinishedGoodsFlag]
      ,p.[Color] As ProductColor
--      ,[SafetyStockLevel]
--     ,[ReorderPoint]
--      ,[ListPrice]
      ,p.[Size] As ProductSize
--      ,[SizeRange]
--     ,[Weight]
--      ,[DaysToManufacture]
      ,p.[ProductLine] As [Product Line]
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
      ,p.[ModelName] As  [Product Model Name]
--      ,[LargePhoto]
      ,p.[EnglishDescription] As [Product Description]
--     ,[FrenchDescription] 
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
      ,ISNULl (p.Status, 'Outdated') As [Product Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
  Left Join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] ps
	 on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  Left Join   [AdventureWorksDW2022].[dbo].[DimProductCategory] pc
	On ps.ProductCategoryKey = pc.ProductCategoryKey

Order by 
	p.ProductKey asc

