/****** Whats is  the highest sales  amount ******/
SELECT MAX ([Total Sales]) AS Highest_Sales_amount
  FROM [Adidas sales Report].[dbo].['Working Sheet$']

/****** Whats is  the Average  sales  amount   ******/
SELECT AVG ([Total Sales]) AS Average_Sales_amount
  FROM [Adidas sales Report].[dbo].['Working Sheet$']

/******Whats are the Top 5 Regions with the highest sales   ******/
SELECT TOP 5[Region] ,sum([Total Sales]) As Total_Sales
      
  FROM [Adidas sales Report].[dbo].['Working Sheet$']
  GROUP BY Region
  ORDER BY Total_Sales DESC;



/****** Whats are the Top 5 States with the highest sales  ******/
SELECT TOP 5[State] ,sum([Total Sales]) As Total_Sales
      
  FROM [Adidas sales Report].[dbo].['Working Sheet$']
  GROUP BY State
  ORDER BY Total_Sales DESC;
