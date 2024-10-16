SELECT c.customer_id, c.customer_name, c.billing_country
FROM customers c
JOIN stores s ON c.billing_country = s.store_country;

