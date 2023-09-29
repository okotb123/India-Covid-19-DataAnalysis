--Cleaned DIM_Customer Table---

SELECT c.CustomerKey As CustomerKey
     -- ,[GeographyKey]
      --,[CustomerAlternateKey]
     -- ,[Title]
      ,c.FirstName As FirstName
    --  ,[MiddleName]
      ,c.[LastName] As LastName
	  ,c.FirstName + ' ' + LastName As FullName
     -- ,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
     /* ,[Suffix]
      ,[Gender]
      ,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome]
      ,[EnglishEducation]
      ,[SpanishEducation]
      ,[FrenchEducation]
      ,[EnglishOccupation]
      ,[SpanishOccupation]
      ,[FrenchOccupation]
      ,[HouseOwnerFlag]
      ,[NumberCarsOwned]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Phone]
	  */
	 ,CASE gender When 'M' Then 'Male' when 'F' Then 'Female' End As Gender,
     c.DateFirstPurchase As DateFirstPurchase,
	 g.city As Customer_City          -- Joined in Customer City From Geography Table 
  
  FROM AdventureWorksDW2022..DimCustomer  c
  Left Join AdventureWorksDW2022..DimGeography  g
	on g.geographykey = c.geographykey
Order by
	Customerkey --Order List By CustomerKey