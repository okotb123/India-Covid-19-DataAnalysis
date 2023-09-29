--Clean DIM_DateTable-----
SELECT  [DateKey]
   ,[FullDateAlternateKey] As Date
    --  ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] As Day
    --  ,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
    --  ,[DayNumberOfYear]
      ,[WeekNumberOfYear]  As week_number
      ,[EnglishMonthName] As Month
	  , Left(EnglishMonthName,3) As MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear]As MonthNo
      ,[CalendarQuarter] As year
      ,[CalendarYear]
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
     -- ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  Where CalendarYear >= 2019