-- ===========================================
-- Dňa: 2026-06-09
-- Téma: customers + orders + products
-- ===========================================

-- 1. Vytvorenie tabuľky customers
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    city TEXT
);

-- 2. Vloženie zákazníkov
INSERT INTO customers (name, email, city)
VALUES 
    ('Jozko Mrkvicka', 'mrkvicka@test.com', 'Poprad'),
    ('Iveta Tazka', 'tazka@test.com', 'Prievidza'),
    ('Denis Mastny', 'mastny@test.com', 'Zvolen');

-- 3. Pridanie stĺpca customer_id do tabuľky orders
ALTER TABLE orders ADD COLUMN customer_id INTEGER;

-- 4. Pridanie cudzieho kľúča
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

-- 5. Priradenie objednávok k zákazníkom
UPDATE orders SET customer_id = 1 WHERE order_id = 1;
UPDATE orders SET customer_id = 2 WHERE order_id = 2;
UPDATE orders SET customer_id = 3 WHERE order_id = 3;

-- 6. JOIN troch tabuliek (zákazníci + objednávky + produkty)
SELECT 
    customers.name AS zakaznik,
    products.name AS produkt,
    orders.quantity,
    orders.order_date,
    orders.is_paid,
    orders.is_shipped
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN products ON orders.product_id = products.id;
