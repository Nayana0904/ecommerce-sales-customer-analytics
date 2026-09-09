CREATE DATABASE ecommerce;
select 1;
use ecommerce;
show tables;
select * from orders;
select count(*) from orders;
describe orders;
select sum(Qty*Unit_Price) as Total_sales from orders;

SELECT Product,
       SUM(Qty * Unit_Price) AS Total_Sales
FROM orders
GROUP BY Product
ORDER BY Total_Sales DESC;

SELECT SUM(Qty * Unit_Price) AS Total_sales
FROM orders;

SELECT City,
       SUM(Qty * Unit_Price) AS Total_Sales
FROM orders
GROUP BY City
ORDER BY Total_Sales DESC;

SELECT MONTH(STR_TO_DATE(Order_Date, '%d/%m/%Y')) AS Month,
       SUM(Qty * Unit_Price) AS Total_Sales
FROM orders
GROUP BY MONTH(STR_TO_DATE(Order_Date, '%d/%m/%Y'))
ORDER BY Month;

SELECT Payment_Mode,
       COUNT(*) AS Total_Orders
FROM orders
GROUP BY Payment_Mode;

SELECT *
FROM orders
WHERE Order_Status = 'Cancelled';

select user();
show variables LIKE 'port';