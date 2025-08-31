use furniture_sales;

select * from online_furniture_retailer;

-- Category by total sales

select distinct product_category, sum(round(total_amount)) as Total_amount from online_furniture_retailer group by product_category;

-- Brand category by sales

select brand, product_category , sum(round(total_amount)) as Total_amount from online_furniture_retailer 
group by brand, product_category;

-- Payment mmethod by total amount
 
select distinct payment_method, sum(round(total_amount)) as Total_amount from online_furniture_retailer 
group by payment_method order by Total_amount desc;

-- Brand wise highest sales

select distinct brand, max(total_amount) as Highest_sales from online_furniture_retailer group by brand;

-- Brand wise lowest sales

select distinct brand, min(total_amount) as Highest_sales from online_furniture_retailer group by brand;

-- % of delivery got cancelled

select (sum( case when delivery_status = 'Cancelled' then 1 else 0 end) * 100) / count(*) as Cancelled_percentage from online_furniture_retailer;

-- % got delivered

select (sum( case when delivery_status = 'Delivered' then 1 else 0 end) * 100) / count(*) as Cancelled_percentage from online_furniture_retailer;

-- % of people asked for service request

select (sum(round( case when assembly_service_requested = 'TRUE' then 1 else 0 end)*100)) / count(*) as Requested_for_service
from online_furniture_retailer;


select (sum(round( case when assembly_service_requested = 'FALSE' then 1 else 0 end)*100)) / count(*) as Didnot_requested_for_service
from online_furniture_retailer;







































