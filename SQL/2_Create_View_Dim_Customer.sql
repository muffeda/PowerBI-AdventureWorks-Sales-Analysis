/******

-- Author: Muffeda
-- Project: Adventure Works Sales Data Analysis

******/

USE [PowerBI_Reporting]
GO

/****** Object:  View [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_DIM_CUSTOMER]    Script Date: 07-07-2025 21:05:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_DIM_CUSTOMER] AS
SELECT 
c.CustomerKey														AS [CustomerKey], 
c.FirstName															AS [First Name], 
c.LastName															AS [Last Name], 
c.FirstName + ' ' + LastName										AS [Full Name], 
CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END		AS [Gender], 
c.DateFirstPurchase													AS [DateFirstPurchase], 
g.city																AS [Customer City] 
FROM 
[AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g 
ON g.GeographyKey = c.GeographyKey;
--ORDER BY CustomerKey ASC;
GO


