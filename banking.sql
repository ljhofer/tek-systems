
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

select e.LAST_NAME as `Last Name`, e.TITLE as `Title`, e2.LAST_NAME as `Supervisor`, e2.TITLE as `Supervisor Title`
from employee as e
join employee as e2 on e.SUPERIOR_EMP_ID = e2.EMP_ID 
;

-- query five
-- For each account, show the name of the account's product, the available balance, and the customer's last name.
select * from account;

-- by individual
select a.ACCOUNT_ID as `Account`, a.PRODUCT_CD as `Product`, a.AVAIL_BALANCE as `Available Balance`, i.LAST_NAME as `Last Name` 
from account as a
left join customer as c on a.CUST_ID = a.CUST_ID 
join individual as i on c.CUST_ID = i.CUST_ID 
;

-- by officer
select a.ACCOUNT_ID as `Account`, a.PRODUCT_CD as `Product`, a.AVAIL_BALANCE as `Available Balance`, o.LAST_NAME as `Last Name` 
from account as a
left join customer as c on a.CUST_ID = a.CUST_ID 
join officer as o on c.CUST_ID = o.CUST_ID 
;
