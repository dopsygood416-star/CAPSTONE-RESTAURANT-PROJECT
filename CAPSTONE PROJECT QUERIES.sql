--CAPSTONE PROJECT DATA ANALYTICS

		--ANALYSIS TASKS PART 3

SELECT * FROM [CAPSTONE_RESTAURANT ]

--Q1. What is total number of transaction
SELECT COUNT (Quantity) AS Total_Transaction
FROM [CAPSTONE_RESTAURANT ]

--Q2. What is the total revenue generated
SELECT SUM(Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]

--Q3. What is the Average sales amount
SELECT SUM(Price_of_Dish_Ordered)/COUNT(DISTINCT Dish_Ordered) AS AVG_Sales_Amount
FROM [CAPSTONE_RESTAURANT ]

--Q4. What is the highest single transaction
SELECT COUNT (Price_of_Dish_Ordered) AS Single_Transaction
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Price_of_Dish_Ordered
ORDER BY Single_Transaction DESC

--Q5. What is the lowest single transaction
SELECT COUNT (Price_of_Dish_Ordered) AS Single_Transaction
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Price_of_Dish_Ordered
ORDER BY Single_Transaction ASC

--Q6. What is the Total quantity sold
SELECT SUM(Quantity) AS Total_Qty_sold
FROM [CAPSTONE_RESTAURANT ]


--Q7. What is the number of unique customers
SELECT COUNT(DISTINCT Customer) AS Unique_customers
FROM [CAPSTONE_RESTAURANT ]


--Q8. What is the number of unique food items
SELECT COUNT(DISTINCT Dish_Ordered) AS Unique_food_items
FROM [CAPSTONE_RESTAURANT ]


--Q9. What is the most expensive item sold?
SELECT TOP 1 Dish_Ordered, Price_of_Dish_Ordered  AS Most_expensive_item
FROM [CAPSTONE_RESTAURANT ]
ORDER BY Dish_Ordered DESC


--10. What is the cheapest item sold?
SELECT TOP 1 Dish_Ordered, Price_of_Dish_Ordered  AS Cheapest_Item_Sold
FROM [CAPSTONE_RESTAURANT ]
ORDER BY Dish_Ordered ASC


				--CUSTOMER ANALYSIS
--Q.11. Which customers spent the most money?
SELECT customer, SUM(Price_of_Dish_Ordered) AS Most_Spent
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Customer
ORDER BY Most_Spent DESC

--Q12. What are the TOP 10 customers by revenue?
SELECT TOP 10 customer, SUM(Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Customer
ORDER BY Total_Revenue DESC


--Q13. What is the Average customer spending?
SELECT AVG(Price_of_Dish_Ordered)d AS AVG_Customer_Spending
FROM [CAPSTONE_RESTAURANT ]


--Q14. Which restaurant generated the most revenue?
SELECT Restaurant, SUM(Price_of_Dish_Ordered) AS MOST_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Restaurant
ORDER BY MOST_Revenue DESC


--Q15. Which customer ordered the most items?
SELECT customer, SUM(Quantity) AS Most_Ordered_Items
FROM [CAPSTONE_RESTAURANT ]
GROUP BY customer
ORDER BY Most_Ordered_Items DESC


			--PRODUCT ANALYSIS
--Q16 What is the top_selling food items?
SELECT Dish_Ordered, SUM(Quantity) AS Top_selling_food
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Top_selling_food DESC

--Q17. What is the least selling food items?
SELECT Dish_Ordered, SUM(Quantity) AS Least_selling_food
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Least_selling_food ASC


--Q18. What is the most profitable products?
SELECT Dish_ordered, SUM(Price_of_Dish_Ordered) AS Most_Profitable
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Most_Profitable DESC


--Q19. Which is the product category with highest sales?
SELECT Dish_Ordered, SUM(Price_of_Dish_Ordered) AS Highest_Sales
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Highest_Sales DESC


--Q20. Which is the product category with lowest sales? 
SELECT Dish_Ordered, SUM(Price_of_Dish_Ordered) AS Lowest_Sales
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Lowest_Sales ASC


--Q21. What is the average quantity sold per product?
SELECT Dish_Ordered, AVG(Quantity) AS AVG_QTY_SOLD
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered


				--TIME-BASE-ANALYSIS

--Q22. What is the revenue by day?
SELECT Date_of_Visit,
		SUM(Quantity*Price_of_Dish_Ordered) AS Daily_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Date_of_Visit
ORDER BY Date_of_Visit


--Q23. What is the revenue by month?
SELECT Date_of_Visit,
		SUM(Quantity*Price_of_Dish_Ordered) AS Monthly_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Date_of_Visit
ORDER BY Date_of_Visit


--Q24. What is the revenue by weekday

SELECT DATENAME(WEEKDAY, Date_of_Visit) AS WEEKDAY,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY DATENAME(WEEKDAY, Date_of_Visit)
ORDER BY Total_Revenue


--Q25. What is the peak sales period?

SELECT DATENAME(DAY, Date_of_Visit) AS Sales_Hour,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY DATENAME(DAY, Date_of_Visit)
ORDER BY Total_Revenue DESC


--Q26. Which month has the highest revenue?

SELECT DATENAME(MONTH, Date_of_Visit) AS Month_Name,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY DATENAME(MONTH, Date_of_Visit), MONTH(Date_of_Visit)
ORDER BY Total_Revenue DESC



--Q.27 Which day recorded the highest sales?

SELECT TOP 1
		CAST(Date_of_Visit AS DATE) AS Sales_Day,
		SUM(Quantity*Price_of_Dish_Ordered) AS Total_Sales
FROM [CAPSTONE_RESTAURANT ]
GROUP BY CAST(Date_of_Visit AS DATE)
ORDER BY Total_Sales DESC





