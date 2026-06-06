create database assignment;

Use assignment;


RENAME TABLE 
    `data analyst test` TO data_analyst_test,
    `pincode master` TO pincode_master,
    `raw data` TO raw_data;


#Q1. Calculate the total quantity sold (Qty) for each state and city. 
# Identify the states and cities with the highest and lowest quantities sold.

select p.state_new, p.city_new, sum(r.qty) as total_qty
from raw_data as r
inner join pincode_master as p
on r.Pincode = p.Pincode
group by State_new, city_new
order by total_qty desc;

select p.state_new, p.city_new, sum(r.qty) as total_qty
from raw_data as r
inner join pincode_master as p
on r.Pincode = p.Pincode
group by State_new, city_new
order by total_qty asc;


#Q2. Join the Raw Data with the Category and Gender Master table. 
# Determine which Category and Gender combination generated the highest sales (sum of ListPrice * Qty).

select d.CATEGORY, d.gender, sum(r.ListPrice * r.qty) as total_sales
from raw_data as r
join data_analyst_test as d
on r.Category = d.CATEGORY
group by d.CATEGORY, d.GENDER
order by total_sales desc
limit 1;

#Q3. Write a query to find the ParentProduct with the highest number of orders in the top 3 cities by total sales (based on
# Pincode Master data)

select p.city_new, sum(r.listprice * r.qty) as total_sales
from pincode_master p
join raw_data r
on p.Pincode = r.Pincode
group by city_new 
order by total_sales desc
limit 3;

select ParentProduct, count(orderid) as Order_count
from raw_data r
join pincode_master p
on r.Pincode = p.Pincode
where p.city_new in('Mumbai', 'bangalore', 'hydrabad')
group by ParentProduct
order by order_count desc
limit 1;