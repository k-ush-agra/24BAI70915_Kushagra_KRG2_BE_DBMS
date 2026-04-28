-- Drop tables if they exist to make the script re-runnable
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products CASCADE;

-- Create Products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    stock_qty INT NOT NULL CHECK (stock_qty >= 0)
);

-- Create Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    qty INT NOT NULL CHECK (qty > 0)
);

-- Insert sample data into products
INSERT INTO products (product_name, stock_qty) VALUES
    ('Laptop', 50),
    ('Smartphone', 100),
    ('Tablet', 0);

-- =========================================================================
-- Define the Trigger Function
-- =========================================================================
CREATE OR REPLACE FUNCTION check_stock_before_order()
RETURNS TRIGGER AS $$
DECLARE
    available_stock INT;
BEGIN
    -- Get the current stock quantity for the requested product
    SELECT stock_qty INTO available_stock
    FROM products
    WHERE product_id = NEW.product_id;

    -- Check if the requested quantity exceeds the available stock
    IF NEW.qty > available_stock THEN
        RAISE EXCEPTION 'Insufficient stock for product ID %. Requested: %, Available: %', 
                        NEW.product_id, NEW.qty, available_stock;
    END IF;

    -- If stock is sufficient, allow the INSERT to proceed
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- =========================================================================
-- Attach the Trigger to the Orders Table
-- =========================================================================
CREATE TRIGGER trg_check_stock
BEFORE INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION check_stock_before_order();

-- =========================================================================
-- Testing the Trigger
-- =========================================================================

-- 1. Successful order (stock is sufficient)
-- Laptops have 50 in stock. Ordering 10 will succeed.
INSERT INTO orders (product_id, qty) VALUES (1, 10);

-- 2. Failing order (requested quantity exceeds stock)
-- Smartphones have 100 in stock. Ordering 150 will be blocked by the trigger.
-- To see the trigger block this insert, uncomment the line below in pgAdmin:
-- INSERT INTO orders (product_id, qty) VALUES (2, 150);

-- 3. Failing order (out of stock)
-- Tablets have 0 in stock. Ordering 1 will be blocked by the trigger.
-- To see the trigger block this insert, uncomment the line below in pgAdmin:
-- INSERT INTO orders (product_id, qty) VALUES (3, 1);
