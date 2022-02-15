
use banking;

-- query 1 
--  For each product, show the product name "Product" and the product type name "Type".
select NAME as `Product`, PRODUCT_TYPE_CD as `Type`
from product
;


-- query two 
-- For each branch, list the branch name and city, plus the last name and title of each employee who works in that branch.
select * from branch;
select * from employee;

select b.name as `Branch Name`, b.city as `City`, e.LAST_NAME as `Last Name`, e.TITLE as `Title`
from branch as b
join employee as e on b.BRANCH_ID = e.ASSIGNED_BRANCH_ID 
;