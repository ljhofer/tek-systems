
-- uses the database classicmodels
use classicmodels;

-- query one
select productName as `Name`, productLine as `Product Line`, buyPrice as `Buy Price` 
from products
order by buyPrice desc
; 

-- query two
select contactFirstName as `First Name`, contactLastName as `Last Name`, city as `City`
from customers 
where country='Germany'
;

-- query three
select distinct status
from orders 
order by status
;

-- query four
select * 
from payments
where paymentDate>="2005-01-01"
order by paymentDate 
;

-- query five
select lastName as `Last Name`, firstName as `First Name`, email, jobTitle as `Job Title`
from employees
where officeCode="1"
order by lastName 
;

-- query six
select productName as `Name`, productLine as `Product Line`, productScale as `Product Scale`, productVendor as `Product Vendor`
from products
where productLine='Classic Cars' or productLine='Vintage Cars'
order by productLine desc, productName 
;

