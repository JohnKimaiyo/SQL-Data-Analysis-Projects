/****** What is highest sales amount ******/
SELECT MAX([Sales Amount]) AS Highest_Sales_Amount
FROM [cloting store sales report].[dbo].['Working sheet$']

  /****** What is the average sales amount ******/
SELECT AVG([Sales Amount]) AS Average_Sales_Amount
FROM [cloting store sales report].[dbo].['Working sheet$']


  /****** What Top 5 Locations with the highest Sales Amount ******/
SELECT TOP 5 [Location], sum([Sales Amount]) AS Total_Sales_Amount
FROM [cloting store sales report].[dbo].['Working sheet$']
GROUP BY [Location]
ORDER BY Total_Sales_Amount DESC;

  /****** What Top 5 Customer with the highest Sales Amount ******/
SELECT TOP 5 [Customer name], sum([Sales Amount]) AS Total_Sales_Amount
FROM [cloting store sales report].[dbo].['Working sheet$']
GROUP BY [Customer name]
ORDER BY Total_Sales_Amount DESC;


  /****** What Top 5 Product Names  with the highest Sales Amount ******/
SELECT TOP 5 [Product name], sum([Sales Amount]) AS Total_Sales_Amount
FROM [cloting store sales report].[dbo].['Working sheet$']
GROUP BY [Product name]
ORDER BY Total_Sales_Amount DESC;

  /****** What Top 5 Product Category   with the highest Sales Amount ******/
SELECT TOP 5 [Product Category], sum([Sales Amount]) AS Total_Sales_Amount
FROM [cloting store sales report].[dbo].['Working sheet$']
GROUP BY [Product Category]
ORDER BY Total_Sales_Amount DESC;