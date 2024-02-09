CREATE database coding_challenge;
USE coding_challenge;

CREATE TABLE electronic_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    manufacturer VARCHAR(100)
);

INSERT INTO electronic_product (product_id, product_name, brand, category, price, manufacturer) VALUES
(1, 'iphone', 'Apple', 'AudioGadget', 599.99, 'Tech Industries'),
(2, 'macbook', 'Apple', 'Laptops', 1299.99, 'Electro Systems'),
(3, 'smart TV 4K', 'LG', 'Televisions', 899.99, 'Visionary Electronics'),
(4, 'Wireless Earbuds', 'Boat', 'AudioGadget', 79.99, 'Audio Solutions'),
(5, 'Digital Camera', 'Canon', 'Cameras', 499.99, 'Photo Innovations'),
(6, 'iwatch', 'Apple', 'watch', 199.99, 'Tech Industries'),
(7, 'Mirrorless Camera', 'SONY', 'Cameras', 499.99, 'Photo Innovations'),
(8, 'PS5', 'SONY', 'gaming console', 499.99, 'Photo Innovations'),
(9, 'gaming laptop', 'Dell', 'Laptops', 1099.99, 'technip Systems'),
(10, 'smart TV', 'croma', 'Televisions', 699.99, 'gS Electronics');


SELECT
    product_id,
    product_name,
    brand,
    category,
    price,
    AVG(price) OVER () AS overall_average_price
FROM electronic_product;


SELECT
    product_id,
    product_name,
    brand,
    category,
    price,
    AVG(price) OVER (PARTITION BY category) AS category_average_price
FROM electronic_product;



SELECT
    category,
    AVG(price) AS average_price_per_category
FROM electronic_product
GROUP BY category
WITH ROLLUP;

SELECT
    category,
    COUNT(*) AS total_products_per_category
FROM electronic_product
GROUP BY category
WITH ROLLUP;

SELECT
    category,
    SUM(price) AS sum_price_per_category
FROM electronic_product
GROUP BY category
WITH ROLLUP;





