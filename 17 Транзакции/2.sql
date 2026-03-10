START TRANSACTION;
UPDATE orders
SET status = 'processing'
WHERE id = 1;

UPDATE inventory
SET quantity = quantity - 5
WHERE product_id = (SELECT id FROM products WHERE product_name = 'Product A');

INSERT INTO deliveries (order_id, delivery_date, status) VALUES
    (1, '2023-10-06', 'in_transit');

COMMIT;