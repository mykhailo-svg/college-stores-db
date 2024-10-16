SELECT s.store_code, s.store_name, s.store_country, 
       c.customer_name, c.billing_country, 
       o.order_id, o.quantity, o.shipping_cost,
       t.total, t.tax, p.payment_status
FROM stores s
LEFT JOIN orders o ON s.store_code = o.store_code
LEFT JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN transactions t ON o.order_id = t.order_id
LEFT JOIN payments p ON o.order_id = p.order_id;

