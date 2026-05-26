
--EXPLORATORY DATA ANALYSIS USING SQL

--1. View the dataset
SELECT * FROM [CAPSTONE_RESTAURANT ]

--2. Total Revenue
SELECT SUM(Price_of_dish_Ordered) AS Total_Revenue
FROM [CAPSTONE_RESTAURANT ]

--3. Average customer spending
SELECT AVG(Price_of_dish_ordered) AS AVG_Spending
FROM [CAPSTONE_RESTAURANT ]

--4. Highest spending customer
SELECT TOP 1 customer, Price_of_dish_ordered
FROM [CAPSTONE_RESTAURANT ]
ORDER BY Price_of_dish_ordered DESC

--5. Revenue by restaurant
SELECT Restaurant,
		SUM(Price_of_dish_ordered) AS Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Restaurant
ORDER BY Revenue DESC

--6. Revenue by Dish order
SELECT Dish_Ordered, 
		SUM(Price_of_dish_ordered) AS Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Dish_Ordered
ORDER BY Revenue DESC

--7. Daily revenue trend
SELECT Date_of_visit,
		SUM(Price_of_dish_ordered) AS Daily_Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Date_of_Visit
ORDER BY Daily_Revenue 	

--8. Restaurant with highest revenue
SELECT Restaurant,
		SUM(Price_of_dish_ordered) AS Revenue
FROM [CAPSTONE_RESTAURANT ]
GROUP BY Restaurant
ORDER BY Revenue DESC
