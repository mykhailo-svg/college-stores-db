SELECT t.order_id, 
       t.tax, 
       t.total, 
       (t.tax / t.total) * 100 AS tax_percentage
FROM transactions t;

