select count(*) from customers;

select count(*) from products;

select * from stores;

select count(*) from transactions;

select count(distinct(customerid)) from customers;

SELECT COUNT(DISTINCT productid) FROM products;

SELECT COUNT(DISTINCT storeid) FROM stores;