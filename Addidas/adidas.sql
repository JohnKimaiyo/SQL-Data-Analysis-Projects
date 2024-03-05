/****** Whats is  the highest sales  amount ******/
SELECT MAX ([Total Sales]) AS Highest_Sales_amount
  FROM [Adidas sales Report].[dbo].['Working Sheet$']













/****** Whats are the Top 5 States with the highest sales  ******/
SELECT TOP 5[State] ,sum([Total Sales]) As Total_Sales
      
  FROM [Adidas sales Report].[dbo].['Working Sheet$']
  GROUP BY State
  ORDER BY Total_Sales DESC;
