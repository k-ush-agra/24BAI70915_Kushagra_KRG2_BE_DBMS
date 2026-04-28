-- Drop tables if they exist to make the script re-runnable
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS products;

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL
);

-- Create order_items table
CREATE TABLE order_items (
    order_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    quantity INT NOT NULL
);

-- Insert sample data
INSERT INTO products (product_name) VALUES
    ('Laptop'),
    ('Smartphone'),
    ('Tablet'),
    ('Smartwatch'),  -- This product will have no orders
    ('Headphones');

INSERT INTO order_items (product_id, quantity) VALUES
    (1, 2),
    (1, 1),
    (2, 5),
    (3, 3),
    (5, 10),
    (5, 2);

-- =========================================================================
-- Query to list all product names and the total quantity ordered for each.
-- Includes products with no orders and shows their quantity as 0.
-- =========================================================================
SELECT 
    p.product_name, 
    CASE WHEN SUM(o.quantity) IS NULL THEN 0 ELSE SUM(o.quantity) END AS total_quantity_ordered
FROM 
    products p
LEFT JOIN 
    order_items o ON p.product_id = o.product_id
GROUP BY 
    p.product_id, 
    p.product_name
ORDER BY 
    p.product_id;
