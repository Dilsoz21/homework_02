--O'tgan homeworkni davomi
--task_7
SELECT country
FROM customers
UNION
SELECT ship_country
FROM orders
ORDER BY country;

--task_8
SELECT country
FROM customers
INTERSECT
SELECT ship_country
FROM orders
INTERSECT
SELECT country
FROM employees;

--task_9
SELECT country
FROM customers
INTERSECT
SELECT ship_country
FROM orders
EXCEPT
SELECT country
FROM employees;


--Homework_02
--task_1
SELECT c.company_name, first_name, c.city
FROM customers c
JOIN orders USING(customer_id)
JOIN employees USING(employee_id)
JOIN shippers ON orders.ship_via = shippers.shipper_id
WHERE c.city = 'London' AND employees.city = 'London' AND shippers.company_name = 'Speedy Express';


--task_2
SELECT product_name, units_in_stock, contact_name, phone
FROM categories
JOIN products USING(category_id)
JOIN suppliers USING(supplier_id)
WHERE discontinued = 1 AND units_in_stock < 20;


--task_3
SELECT contact_name, order_id
FROM orders
LEFT JOIN customers USING(customer_id)
WHERE shipped_date IS NULL;


--task_4
SELECT contact_name, order_id
FROM customers
RIGHT JOIN orders USING(customer_id)
WHERE shipped_date IS NULL