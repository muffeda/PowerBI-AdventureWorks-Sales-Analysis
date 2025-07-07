/******

-- Author: Muffeda
-- Project: Adventure Works Sales Data Analysis

******/
USE [PowerBI_Reporting]
GO

/****** Object:  View [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_DIM_DATE]     ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_DIM_DATE] AS
SELECT 
[DateKey],
[FullDateAlternateKey] AS Date,
[EnglishDayNameOfWeek] AS Day,
[EnglishMonthName] AS Month,
LEFT([EnglishMonthName], 3) AS MonthShort,
[MonthNumberOfYear] AS MonthNo,
[CalendarQuarter] AS Quarter,
[CalendarYear] AS Year 
FROM
[AdventureWorksDW2019].[dbo].[DimDate] 
WHERE CalendarYear >= 2010;
GO


