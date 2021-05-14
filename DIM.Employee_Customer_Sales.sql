-- Cleaned Employee, Sales, and Customer tables --
SELECT 
	emp.[Employee Key],
      --[WWI Employee ID],
      emp.[Employee],
      --[Preferred Name],
      emp.[Is Salesperson],
      --,[Photo]
      --,[Valid From]
      --,[Valid To]
      --,[Lineage Key]
	  sales.[Sale Key],
	  sales.[City Key],
	  sales.[Customer Key],
	  sales.Profit,
	  sales.[Invoice Date Key],
	  cust.Customer,
	  cust.[Buying Group]
  FROM [WideWorldImportersDW].[Dimension].[Employee] AS emp
  LEFT JOIN [WideWorldImportersDW].[Fact].[Sale] AS sales -- Left join on Employee table on employee key
  ON sales.[Salesperson Key] = emp.[Employee Key]
  LEFT JOIN [WideWorldImportersDW].[Dimension].[Customer] AS cust
  ON sales.[Customer Key] = cust.[Customer Key] -- Left join on sales table on customer key
  WHERE "Is Salesperson" = 'TRUE'