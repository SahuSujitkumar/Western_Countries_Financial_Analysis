Create Database Capstone_Project;

Use Capstone_Project;

Select * From Western_Countries_Financial_Data;

-- Product wise Sales
Select 
	Product, 
	Round(Sum(Sales),2) As Total_Sales
From 
	Western_Countries_Financial_Data
Group By 
	Product
Order By 
	Total_Sales Desc;

-- Segment wise Profit
Select 
	Segment, 
	Round(Sum(Profit),2) As Total_Profit
From 
	Western_Countries_Financial_Data
Group by 
	Segment
Order By 
	Total_Profit Desc;

-- Yearly sales
Select 
	Year, 
	Round(Sum(Sales),2) As Total_Sales
From 
	Western_Countries_Financial_Data
Group By 
	Year
Order By 
	Total_Sales Desc;

-- Country wise Sales
Select 
	Country,
	Round(Sum(Sales),2) As Total_Sales
From 
	Western_Countries_Financial_Data
Group By 
	Country
Order By 
	Total_Sales Desc;

--Profit and sales by Qtr
SELECT 
	CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END AS Quarter,
	Round(Sum(Sales), 2) AS Total_Sales,
	Round(Sum(Profit), 2) AS Total_Profit
FROM
	Western_Countries_Financial_Data
GROUP BY 
	CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END
ORDER BY
	Quarter;

-- Yearly profit
Select 
	Year, 
	Round(Sum(Profit),2) As Total_Profit
From 
	Western_Countries_Financial_Data
Group By 
	Year
Order By 
	Total_Profit Desc;

-- Top 2 countries
Select Top 2
	Country,
	Round(Sum(Sales),2) As Total_Sales
From
	Western_Countries_Financial_Data
Group By
	Country
Order By 
	Total_Sales Desc;

-- Bottom 3 products
Select Top 3
	Country,
	Round(Sum(Sales),2) As Total_Sales
From
	Western_Countries_Financial_Data
Group By
	Country
Order By 
	Total_Sales Asc;

-- Product wise discount
Select 
	Product, 
	Round(Sum(Discounts),2) As Total_Discounts
From 
	Western_Countries_Financial_Data
Group By 
	Product
Order By 
	Total_Discounts Desc;

-- No. of units sold year over year
Select
	Year,
	Sum(Units_Sold) As Total_Unit_Sold
From 
	Western_Countries_Financial_Data
Group By
	Year;

-- Segment wise Product Sales
Select Segment, Product, Round(Sum(Sales),2) As Total_Sales
From Western_Countries_Financial_Data
Group By Segment, Product
Order By Segment, Total_Sales desc, Product;

-- Segment wise product wise profit
Select Segment, Product, Round(Sum(Profit),2) As Total_Profit
From Western_Countries_Financial_Data
Group By Segment, Product
Order By Segment, Total_Profit desc, Product;




