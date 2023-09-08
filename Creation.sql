create table super_store (
row_id integer,
order_id varchar,
order_date date,
ship_date date,
ship_mode varchar,
customer_id varchar,
customer_name varchar,
segment varchar,
country varchar,
city varchar,
state varchar,
postal_code integer,
region varchar,
product_id varchar,
category varchar,
sub_category varchar,
product_name varchar,
sales float,
quantity integer,
discount float,
profits float

);

COPY super_store 
FROM 'E:\SQL Projects\Sample - Superstore.csv' 
DELIMITER ',' CSV HEADER encoding 'windows-1251';