SELECT p.*
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
LEFT JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_id IS NULL OR o.transaction_status = 'ERROR';

