-- Moja prvá tabuľka a dáta
SELECT * FROM products;

INSERT INTO products (name, price, stock)
VALUES ('Notebook', 999.99, 10);

INSERT INTO products (name, price, stock)
VALUES ('Mys', 25.50, 50);

INSERT INTO products (name, price, stock)
VALUES ('Klavesnica', 49.90, 25);

SELECT * FROM products;

UPDATE products SET price = 799.99 WHERE name = 'Notebook';

SELECT * FROM products;
