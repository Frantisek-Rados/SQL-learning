-- 1. Vytvorenie tabuľky products (ak neexistuje)
CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL,
    stock INTEGER
);

-- 2. Vymazanie starých dát a vloženie nových produktov
DELETE FROM products;

INSERT INTO products (id, name, price, stock)
VALUES 
    (1, 'Notebook', 999.99, 10),
    (2, 'Mys', 25.50, 50),
    (3, 'Klavesnica', 49.90, 25);

-- 3. Vytvorenie tabuľky orders s cudzím kľúčom
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    quantity INTEGER,
    order_date TEXT,
    is_paid INTEGER DEFAULT 0,
    is_shipped INTEGER DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- 4. Vloženie objednávok
INSERT INTO orders (product_id, quantity, order_date, is_paid, is_shipped)
VALUES 
    (1, 1, '2025-06-08', 1, 0),
    (3, 2, '2025-06-08', 0, 0),
    (1, 1, '2025-06-07', 1, 1);

-- 5. JOIN – zobrazenie objednávok s názvami produktov
SELECT 
    orders.order_id,
    products.name,
    orders.quantity,
    orders.order_date,
    orders.is_paid,
    orders.is_shipped
FROM orders
JOIN products ON orders.product_id = products.id;

-- 6. Vytvorenie VIEW pre jednoduchšie dotazy
CREATE VIEW IF NOT EXISTS order_details AS
SELECT 
    orders.order_id,
    products.name AS product_name,
    orders.quantity,
    orders.order_date,
    orders.is_paid,
    orders.is_shipped
FROM orders
JOIN products ON orders.product_id = products.id;