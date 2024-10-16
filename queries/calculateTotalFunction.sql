DELIMITER $$

CREATE FUNCTION calculate_order_total(orderID INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE order_total DECIMAL(10, 2);
    
    SELECT SUM(p.price * o.quantity)
    INTO order_total
    FROM products p
    JOIN orders o ON p.product_id = o.order_id
    WHERE o.order_id = orderID;

    RETURN order_total;
END $$

DELIMITER ;


-- Usage

SELECT calculate_order_total(order_id) FROM orders WHERE order_id = 1;

