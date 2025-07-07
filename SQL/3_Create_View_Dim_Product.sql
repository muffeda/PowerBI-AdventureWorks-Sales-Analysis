/******

-- Author: Muffeda
-- Project: Adventure Works Sales Data Analysis

******/
USE [PowerBI_Reporting]
GO

/****** Object:  View [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_DIM_PRODUCT]    ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [PB_ADWH2019_SALES_ANALYSIS_PROJ].[VW_DIM_PRODUCT] AS
SELECT 
p.[ProductKey]										AS [ProductKey],
p.[ProductAlternateKey]								AS [ProductItemCode], 
p.[EnglishProductName]								AS [Product Name], 
ps.EnglishProductSubcategoryName					AS [Sub Category],
pc.EnglishProductCategoryName						AS [Product Category], 
p.[Color]											AS [Product Color], 
p.[Size]											AS [Product Size], 
p.[ProductLine]										AS [Product Line],
p.[ModelName]										AS [Product Model Name], 
p.[EnglishDescription]								AS [Product Description], 
ISNULL (p.Status, 'Outdated')						AS [Product Status] 
FROM
[AdventureWorksDW2019].[dbo].[DimProduct]		as p 
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubCategory]				as ps
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory]				as pc
ON ps.ProductSubcategoryKey = pc.ProductCategoryKey;
GO


