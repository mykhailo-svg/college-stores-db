-- By total
SELECT t.order_id, SUM(t.total) AS total_sum
FROM transactions t
GROUP BY t.order_id
ORDER BY total_sum DESC
LIMIT 3;

-- By number of sold items
SELECT o.order_id, SUM(o.quantity) AS total_sold
FROM orders o
GROUP BY o.order_id
ORDER BY total_sold DESC
LIMIT 3;

-- By shipping cost
SELECT o.order_id, o.shipping_cost
FROM orders o
ORDER BY o.shipping_cost DESC
LIMIT 3;

