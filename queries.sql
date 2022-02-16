-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT products.ProductName, categories.CategoryName FROM products
LEFT JOIN categories ON products.supplierid = categories.CategoryID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT orders.OrderID, shipper.ShipperName FROM orders
LEFT JOIN shipper ON orders.ShipperID = shipper.ShipperID 
WHERE orderdate <= '2012.08.09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT products.ProductName, orderdetails.Quantity FROM orderdetails
RIGHT JOIN products ON products.ProductID = orderdetails.ProductID 
WHERE orderdetails.OrderID = 10251 ORDER BY products.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.





select suppliername, count(*) as num_products from products as p
join suppliers as s on s.supplierid = p.supplierid
group by p.supplierid