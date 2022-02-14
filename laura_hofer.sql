
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


