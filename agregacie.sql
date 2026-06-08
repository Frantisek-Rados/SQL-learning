-- Agregácie v SQL – 2026-06-05
-- Testovacie prostredie: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

-- COUNT
SELECT COUNT(*) FROM Customers;

-- SUM
SELECT SUM(Price) FROM Products;

-- AVG
SELECT AVG(Price) FROM Products;

-- GROUP BY (počet zákazníkov podľa krajiny)
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;

-- ORDER BY (A-Z)
SELECT * FROM Customers ORDER BY CustomerName;

-- ORDER BY (Z-A)
SELECT * FROM Customers ORDER BY CustomerName DESC;
