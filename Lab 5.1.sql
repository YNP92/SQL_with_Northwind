select * from customers;
select distinct country from customers;
select * from customers where CustomerID like 'BL%';
select * from orders limit 100;
select ContactName, PostalCode from customers where PostalCode = '1010' or PostalCode ='3012' or PostalCode ='12209' or PostalCode = '05023';
select * from orders where ShipRegion is not null;
select * from customers order by country, city; 
insert into customers (CustomerID, CompanyName, ContactName, ContactTitle, Address) values ('PEWP','Goofy', 'Goober','Gum', '1221 east Pickle');
update orders set shipregion='EuroZone' where shipcountry='France';
DELETE FROM `order details` WHERE quantity='1';
select avg(Quantity) from `order details`;
select min(quantity) from `order details`; 
select max(quantity) from `order details`;
select OrderID, min(quantity), max(quantity), avg(quantity) from `order details` group by OrderID;
select customerid FROM orders WHERE orderid='10290';
select * from orders inner join customers ON orders.customerid = customers.customerid;
select * from orders left join customers ON orders.customerid = customers.customerid;
select * from orders right join customers ON orders.customerid = customers.customerid;
# Use a join to get the ship city and ship country of all the orders which are associated with an employee who is in London
select employees.FirstName, orders.ShipCity , orders.ShipCountry from orders inner join employees on orders.EmployeeID = employees.EmployeeID where employees.City = 'London';
# Use a join to get the ship name of all orders that include a discontinued product. (See orders, order details, and products. 1 means discontinued.)
select orders.ShipName, products.Discontinued from orders join `order details` on orders.OrderID = `order details`.OrderID  join products on `order details`.ProductID = products.ProductID where products.Discontinued = 1;
# Get employees’ firstname for all employees who report to no one.
select employees.FirstName, employees.RecdportsTo from  employees where ReportsTo is null;
# Get employees’ firstname for all employees who report to Andrew.
select employees.FirstName, employees.ReportsTo from employees where ReportsTo = 2;
