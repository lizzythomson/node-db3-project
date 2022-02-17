-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT product.ProductName, category.CategoryName FROM product
LEFT JOIN category ON product.SupplierId = category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT "order".Id, shipper.CompanyName FROM "order"
INNER JOIN shipper ON "order".ShipVia = shipper.Id
WHERE orderdate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT product.ProductName, orderdetail.Quantity FROM orderdetail
RIGHT JOIN product ON product.Id = orderdetail.ProductId 
WHERE orderdetail.OrderId = 10251 ORDER BY product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT "order".Id AS order_id, customer.CompanyName AS customer_company_name, employee.LastName AS employee_last_name FROM "order"
JOIN customer ON "order".CustomerId = customer.Id
JOIN employee ON "order".EmployeeId = employee.Id;
