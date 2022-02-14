-- uses the database classicmodels
use classicmodels;

-- query one
select c.customerName as `Customer Name`, CONCAT(e.lastName, ', ', e.firstName) as `Sales Rep`
from customers as c 
join employees as e on c.salesRepEmployeeNumber = e.employeeNumber
order by c.customerName
;

