/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
	[City Key]
      --,[WWI City ID]
      ,[City]
      ,[State Province]
      --,[Country]
      --,[Continent]
      ,[Sales Territory]
      --,[Region]
      --,[Subregion]
      --,[Location]
      --,[Latest Recorded Population]
      --,[Valid From]
      --,[Valid To]
      --,[Lineage Key]
  FROM [WideWorldImportersDW].[Dimension].[City]
  WHERE "City Key" >= 1