					--INSIGHT GENERATION -PART 4
--INSIGHT 1. What products should management promote more?

SELECT Dish_Ordered, 
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Total_Revenue DESC


--INSIGHT 2. Which products should management discontinued?
SELECT Dish_Ordered,
		SUM(Quantity) AS Total_Qty_Sold
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Total_Qty_Sold ASC


--INSIGHT 3. Which customer segment generates the most revenue?
SELECT Customer,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Customer
ORDER BY Total_Revenue DESC


--INSIGHT 4. Which sales trends can be observed?
				-- 1. DAILY SALES TREND
SELECT CAST(Date_of_Visit AS DATE) AS Sales_Date,
		SUM(Quantity*Price_of_Dish_Ordered) AS Daily_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY CAST(Date_of_Visit AS DATE)
ORDER BY Sales_Date DESC

				--2. MONTHLY SALES TREND
SELECT DATENAME(MONTH, Date_of_Visit) AS Sales_Month,
		MONTH(Date_of_Visit) AS Month_Number,
		SUM(Quantity*Price_of_Dish_Ordered) AS Monthly_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY DATENAME(MONTH, Date_of_Visit), 
		MONTH(Date_of_Visit) 
ORDER BY Month_Number		

					--3. WEEKDAYS SALES TREND
SELECT DATENAME(Weekday, Date_of_Visit) AS Weekday,
		SUM(Quantity*Price_of_Dish_Ordered) AS Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY DATENAME(Weekday, Date_of_Visit) 
ORDER BY Revenue DESC		

					--4. PEAK SALES HOURS
SELECT DATENAME(DAY, Date_of_Visit) AS Sales_Hour,
		SUM(Quantity*Price_of_Dish_Ordered) AS Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY DATENAME(DAY, Date_of_Visit)
ORDER BY Revenue DESC

					--5. PRODUCT SALES TREND
SELECT Dish_Ordered,
		SUM(Quantity) AS Total_Qty_Sold
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Total_Qty_Sold DESC


					--6. CUSTOMER SPENDING TREND
SELECT Customer,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Spending
FROM [CAPSTONE_RESTAURANT ]
GROUP BY customer
ORDER BY Total_Spending DESC


--5. Which restaurant locations need improvement?
SELECT Restaurant,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Restaurant
ORDER BY Total_Revenue ASC


--6. What operation issues were discovered?
SELECT Restaurant,
		SUM(Quantity) AS Total_Quantity_Sales
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Restaurant
ORDER BY Total_Quantity_Sales ASC


--7. What recommendations can improve profitability? 

--1. To discontinue low performing products like pizza and wrap
--2. Review price for low performing products.

SELECT Dish_Ordered,
		SUM(Quantity) AS Total_Quantity_Sold
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Total_Quantity_Sold ASC
