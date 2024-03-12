use sales ;

select * from customers ;

select * from transactions ;
select count(*) from transactions ;
select count(*) from sales.customers ;
select * from markets ; 
select * from transactions where market_code = 'Mark001';
select count(*) from transactions where market_code = 'Mark001';
select * from transactions where currency ='USD';

select * from date;


select transactions.* ,date.* from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;

# This will show sum of all transaction in 2020
select sum(transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;

# This will show sum of all transactions in 2020 of chennai 
select sum(transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = "Mark001";

select * from products ;

# This will show unique product sold in chennai 
select distinct product_code from transactions where market_code = "Mark001";


select * from transactions where sales_amount <=0;

# there is duplicat values in currency
select distinct(transactions.currency) from transactions ;

select count(*) from transactions where currency = 'INR';

select count(*) from transactions where currency = 'INR\r';

select count(*) from transactions where currency = 'USD\r';

select count(*) from transactions where currency = 'USD';

select * from transactions where currency = 'USD' or currency = 'USD\r';

# TO check revenue in 2020
select sum(sales_amount) from transactions INNER JOIN date ON transactions.order_date=date.date
where date.year=2020 
and 
currency='INR\r' or currency = 'USD\r';

# TO check revenue in 2020 in month ex- jan or feb 
select sum(sales_amount) from transactions INNER JOIN date ON transactions.order_date=date.date
where date.year=2020 
and 
date.month_name = 'February' and 
(currency='INR\r' or currency = 'USD\r');


# TO check revenue in 2020 in chennai
select sum(sales_amount) from transactions INNER JOIN date ON transactions.order_date=date.date
where date.year=2020 
and market_code ='Mark001';
use sales;
