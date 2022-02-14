
--uses the database classicmodels
use classicmodels;

select productName as `Name`, productLine as `Product Line`, buyPrice as `Buy Price` 
from products
order by buyPrice desc
; 