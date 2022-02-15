
use banking;

-- query 1 
--  For each product, show the product name "Product" and the product type name "Type".
select NAME as `Product`, PRODUCT_TYPE_CD as `Type`
from product
;


-- query two 
-- For each branch, list the branch name and city, plus the last name and title of each employee who works in that branch.
select b.name as `Branch Name`, b.city as `City`, e.LAST_NAME as `Last Name`, e.TITLE as `Title`
from branch as b
join employee as e on b.BRANCH_ID = e.ASSIGNED_BRANCH_ID 
;


-- query three
-- Show a list of each unique employee title.
select distinct(TITLE) 
from employee
;

-- query four
-- Show the last name and title of each employee, along with the last name and title of that employee's boss.
select * from employee;

select e.LAST_NAME as `Last Name`, e.TITLE as `Title`, e2.LAST_NAME as `Supervisor`, e2.TITLE as `Supervisor Title`
from employee as e
join employee as e2 on e.SUPERIOR_EMP_ID = e2.EMP_ID 
;
