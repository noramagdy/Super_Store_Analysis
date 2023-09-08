select * 
from super_store;

select date_trunc('year', order_date) as year, 
sum(sales) as sum_of_sales, 
sum(profits) as sum_of_profits
from super_store
group by year
order by year;


select date_part('year', order_date) as year,
case when date_part('month', order_date) in (1,2,3) then 'Quarter1'
     when date_part('month', order_date) in (4,5,6) then 'Quarter2'
	 when date_part('month', order_date) in (7,8,9) then 'Quarter3'
else 'Quarter4'
end as quarter,
sum(sales) as sum_of_sales,
sum(profits) as sum_of_profits
from super_store
group by quarter, year
order by quarter, year;


select region,
round(sum(sales)) as sum_of_sales,
round(sum(profits)) as sum_of_profits
from super_store
group by region
order by sum_of_profits desc;


select state, city,
round(sum(sales)) as sum_of_sales,
round(sum(profits)) as sum_of_profits
from super_store
group by state, city
order by sum_of_profits desc;


select category, 
sum(discount) as sum_of_discount
from super_store
group by category
order by sum_of_discount desc;


select category, region,
round(sum(sales)) as sum_of_sales, 
round(sum(profits)) as sum_of_profits
from super_store
group by category, region
order by sum_of_profits desc;


select sub_category, region,
round(sum(sales)) as sum_of_sales, 
round(sum(profits)) as sum_of_profits
from super_store
group by sub_category, region
order by sum_of_profits desc;


select product_name,
round(sum(sales)) as sum_of_sales, 
round(sum(profits)) as sum_of_profits
from super_store
group by product_name
order by sum_of_profits;

select product_name,
round(sum(sales)) as sum_of_sales, 
round(sum(profits)) as sum_of_profits
from super_store
group by product_name
order by sum_of_profits desc;


select segment,
round(sum(sales)) as sum_of_sales, 
round(sum(profits)) as sum_of_profits
from super_store
group by segment
order by sum_of_profits desc;


select count(distinct(customer_id)) as count_of_customer_id,
region, state
from super_store
group by region, state
order by count_of_customer_id desc;


select customer_name, customer_id,
round(sum(sales)) as sum_of_sales, 
round(sum(profits)) as sum_of_profits
from super_store
group by customer_name, customer_id
order by sum_of_sales desc;


select round(avg(ship_date-order_date),1) as average_of_shipping_time
from super_store
order by average_of_shipping_time desc;