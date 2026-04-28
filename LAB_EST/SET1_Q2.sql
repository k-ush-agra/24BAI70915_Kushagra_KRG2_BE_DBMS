
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    stock_qty INT NOT NULL CHECK (stock_qty >= 0)
);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    qty INT NOT NULL CHECK (qty > 0)
);


INSERT INTO products (product_name, stock_qty) VALUES
    ('Laptop', 50),
    ('Smartphone', 100),
    ('Tablet', 0);


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

CREATE TRIGGER trg_check_stock
BEFORE INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION check_stock_before_order();



INSERT INTO orders (product_id, qty) VALUES (1, 10);

INSERT INTO orders (product_id, qty) VALUES (2, 150);  --  Failing order (requested quantity exceeds stock)

INSERT INTO orders (product_id, qty) VALUES (3, 1);    --  Failing order (out of stock)
