/****** Whats is the highest expense amount  ******/
SELECT MAX ([Transaction Amount]) AS Highest_Expense_Aount
  FROM [City of Boulder Colarado Accpunts Payable Report].[dbo].['Working Sheet$']

/****** Whats is the Average expense amount  ******/
  SELECT ROUND(AVG ([Transaction Amount]),0) AS Average_Expense_Aount
  FROM [City of Boulder Colarado Accpunts Payable Report].[dbo].['Working Sheet$']


/****** Whats are the Top 5 Supplier Payments ******/
  SELECT TOP 5  [Vendor Name] ,SUM([Transaction Amount]) AS Total_Expense_Amount
  FROM [City of Boulder Colarado Accpunts Payable Report].[dbo].['Working Sheet$']
  GROUP BY [Vendor Name] 
  ORDER BY Total_Expense_Amount DESC;


/****** Whats are the Top 5  Department Payments******/
  SELECT TOP 5  [Department] ,SUM([Transaction Amount]) AS Total_Expense_Amount
  FROM [City of Boulder Colarado Accpunts Payable Report].[dbo].['Working Sheet$']
  GROUP BY [Department]
  ORDER BY Total_Expense_Amount DESC;

/****** Whats are the Top 5  Cost Centers Expense Cost******/
  SELECT TOP 5  [Cost Center] ,SUM([Transaction Amount]) AS Total_Expense_Amount
  FROM [City of Boulder Colarado Accpunts Payable Report].[dbo].['Working Sheet$']
  GROUP BY [Cost Center]
  ORDER BY Total_Expense_Amount DESC;

/****** Whats are the Top 5  Expense Type  Cost******/
  SELECT TOP 5  [Expense Type] ,SUM([Transaction Amount]) AS Total_Expense_Amount
  FROM [City of Boulder Colarado Accpunts Payable Report].[dbo].['Working Sheet$']
  GROUP BY [Expense Type]
  ORDER BY Total_Expense_Amount DESC;