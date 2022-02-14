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

