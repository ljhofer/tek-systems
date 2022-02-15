-- uses the database classicmodels
use classicmodels;

-- query one
select c.customerName as `Customer Name`, CONCAT(e.lastName, ', ', e.firstName) as `Sales Rep`
from customers as c 
join employees as e on c.salesRepEmployeeNumber = e.employeeNumber
order by c.customerName
;

-- query two
select p.productName as `Product Name`, od.quantityOrdered as `Total # Ordered`, od.quantityOrdered*od.priceEach as `Total Sale`
from orderdetails as od
join products as p on od.productCode = p.productCode
group by `Product Name`
order by `Total Sale` desc
;


-- query three
-- Write a query which lists order status and the # of orders with that status. 
-- Column headers should be “Order Status” and “# Orders”. Sort alphabetically by status.
select status as `Order Status`, COUNT(status) as `# Orders`
from orders as o
group by status 
;

-- query four
-- Write a query to list, for each product line, the total # of products sold from that product line. 
-- The first column should be “Product Line” and the second should be “# Sold”. Order by the second column descending.
select pl.productLine as `Product Line`, SUM(od.quantityOrdered) as `# Sold`
from productlines as pl
join products as p on p.productLine = pl.productLine 
join orderdetails as od on p.productCode = od.productCode 
group by pl.productLine 
order by `# Sold` desc
;

-- query five
-- For each employee who represents customers, output the total # of orders that employee’s customers have placed alongside the total sale amount of those orders. 
-- The employee name should be output as a single column named “Sales Rep” formatted as “lastName, firstName”. The second column should be titled “# Orders” and the third should be “Total Sales”. 
-- Sort the output by Total Sales descending. Only (and all) employees with the job title ‘Sales Rep’ should be included in the output, and if the employee made no sales the Total Sales should display as “0.00”.

select CONCAT(e.lastName, ', ', e.firstName) as `Sales Rep`, COUNT(od.orderNumber) as `# Orders`, 
	if (SUM(od.quantityOrdered*priceEach) is NULL, '0.00', SUM(od.quantityOrdered*priceEach)) as `Total Sales`
from employees as e 
left join customers as c on e.employeeNumber = c.salesRepEmployeeNumber 
left join orders as o on c.customerNumber = o.customerNumber 
left join orderdetails as od on o.orderNumber = od.orderNumber 
where jobTitle='Sales Rep'
group by `Sales Rep`
order by `Total Sales` desc
;




