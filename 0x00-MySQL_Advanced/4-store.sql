-- Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.
CREATE TRIGGER decrease_quantity
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items 
SET NEW.quantity = quantity - NEW.number
WHERE orders.items_name = items.name;
