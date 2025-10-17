-- 1.Calculate the total premium amount collected from all customers.
SELECT SUM(Premium) AS Total_Premium FROM Policy_details;

--2.Find the names of customers who live in London.
SELECT Name FROM Customer_details WHERE City = 'London';

--3.Show the details of customers who are older than 35 years.
SELECT Customer_id, Name, Gender, Age, City, Vintage FROM Customer_details WHERE Age > 35;

-- 4. Find the total premium collected per city
SELECT c.City, SUM(p.Premium) AS Total_Premium
FROM Customer_details c
JOIN Policy_details p ON c.Customer_id = p.Customer_id
GROUP BY c.City;

-- 5. Find the average premium amount for each product type
SELECT pr.Product_type, AVG(p.Premium) AS Avg_Premium
FROM Policy_details p
JOIN Product_details pr ON p.Product_id = pr.Product_id
GROUP BY pr.Product_type;

-- 6. Count the number of male vs female customers
SELECT Gender,COUNT(*) AS Total_Customers
FROM Customer_details
GROUP BY Gender;

-- 7. List customers along with the product type they purchased
SELECT c.Name, pr.Product_type, p.Premium
FROM Customer_details CARDINALITY
JOIN Policy_details ON c.Customer_id = p.Customer_id
JOIN Product_details ON p.Product_id = pr.Product_id;

-- 8. Find the average age of customers for each product type
SELECT pr.Product_type, AVG(c.Age) AS Avg_Age
FROM Customer_details c
JOIN Policy_details p ON c.Customer_id = p.Customer_id
JOIN Product_details pr ON p.Product_id = pr.Product_id
GROUP BY pr.Product_type;

-- 9. Find the top 3 customers with the highest premium payments
SELECT c.Name, SUM(p.Premium) AS Total_Premium
FROM Customer_details c
JOIN Policy_details p ON c.Customer_id = p.Customer_id
GROUP BY c.Name
ORDER BY Total_Premium DESC
LIMIT 3;

-- 10. List customers who have paid a premium above 10,000
SELECT c.Name, p.Premium
FROM Customer_details c
JOIN Policy_details p ON c.Customer_id = p.Customer_id
WHERE p.Premium > 10000;