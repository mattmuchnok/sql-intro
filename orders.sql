CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id SERIAL NOT NULL,
    product_id INTEGER NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    product_price FLOAT NOT NULL
);

INSERT INTO orders (product_id, product_name, product_price)
VALUES
(123, 'Pizza', 5.99),
(321, 'Pasta with Chicken', 9.99);

SELECT * FROM orders;

SELECT COUNT(product_id) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(product_price) FROM orders WHERE person_id = 1;