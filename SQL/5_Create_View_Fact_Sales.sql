/******

-- Author: Muffeda
-- Project: Adventure Works Sales Data Analysis

******/
USE [PowerBI_Reporting]
GO

/****** Object:  View [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_FACT_SALES]  ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_FACT_SALES] AS
SELECT 
[ProductKey], 
[OrderDateKey], 
[DueDateKey], 
[ShipDateKey], 
[CustomerKey], 
[SalesOrderNumber], 
[SalesAmount] 
FROM 
[AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
CAST (LEFT(OrderDateKey, 4) as int) >= 2010 
AND  CAST (LEFT(OrderDateKey, 4) as int) < 2016;
GO


