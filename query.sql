-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
  
SELECT Customers.first_name, Orders.item, Orders.amount, Shippings.status , Shippings.shipping_id
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id
LEFT JOIN Shippings
ON Customers.customer_id = Shippings.customer
WHERE Customers.customer_id BETWEEN 1 AND 5 AND Orders.amount IS NOT NULL
ORDER BY Orders.amount;

SELECT age,
COUNT(Customers.age)
FROM Customers
GROUP BY age;