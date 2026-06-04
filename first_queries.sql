-- Moje prvé SQL dotazy (W3Schools)
-- Dátum: 2026-06-04

-- 1. Všetci zákazníci (7 stĺpcov)
SELECT * FROM Customers;

-- 2. Zákazníci z USA (13 zákazníkov)
SELECT * FROM Customers WHERE Country = 'USA';

-- 3. Len mená a krajiny (2 stĺpce)
SELECT CustomerName, Country FROM Customers;

-- 4. Spojenie objednávok a zákazníkov (OrderID + CustomerName)
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
