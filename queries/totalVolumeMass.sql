CREATE VIEW product_volume_mass AS
SELECT SUM(weight) AS total_weight, 
       SUM(height * width * length) AS total_volume 
FROM products;

