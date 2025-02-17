--Claensed table DimDate

SELECT TOP (1000) [DateKey],
      [FullDateAlternateKey] As Date,
      --[DayNumberOfWeek]
      [EnglishDayNameOfWeek] AS Day,
      --,[SpanishDayNameOfWeek]
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth]
      --[DayNumberOfYear]
      --[WeekNumberOfYear]

      [EnglishMonthName] AS Month ,
	  Left([EnglishMonthName], 3) AS MonthShort,   -- Useful for front end date navigation and front end graphs.
      --[SpanishMonthName]
      --[FrenchMonthName]

      [MonthNumberOfYear] AS MonthNo ,
      [CalendarQuarter] AS Quarter, 
      [CalendarYear] AS Year
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear >=2019
