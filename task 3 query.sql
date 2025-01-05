--select * from employees where department = 'IT' and salary > 50000;


--select o.orderid,c.customername,c.contactnumber from customers c 
--join orders o on o.customerid = c.customerid;

 
--select productID,sum(quantitysold) as total_quantity_sold from sales group by productID order by productID;

 
--select avg(quantitysold) as average_quantity_sold, extract(month from saledate) from sales group by saledate order by saledate;

 
--select productID,upper(productname),category from products;

 
--select eventname,eventdate from events where eventdate between current_date and current_date + interval '1 month';

 
--select employeeid,firstname,lastname,salary from employees where salary > (select avg(salary) from employees);

 
--create or replace function products_upd()
--returns trigger as $$
--  begin
--	new.lastmodified = current_timestamp;
--	return new;
--	end;
--$$ language plpgsql

--create or replace trigger update_products
--before update on products
--for each row
--execute  function products_upd()

 
--create view activecustomer as (select c.customerid,c.customername,o.orderdate from customers c
--join orders o on o.customerid = c.customerid where extract(year from orderdate) = 2023);


--scenario 10 wrong scenario--


--select *,rank() over(order by score desc)from participants;


--scenario 12 wrong scenario--


--select *,sum(quantitysold) over(partition by productid) as runningtotal from sales;


--scenario 14 wrong scenario--


--scenario 15 wrong scenario--
