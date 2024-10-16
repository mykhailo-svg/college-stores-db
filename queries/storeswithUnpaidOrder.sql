SELECT s.store_code, s.store_name
FROM stores s
JOIN orders o ON s.store_code = o.store_code
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status != 'paid';

