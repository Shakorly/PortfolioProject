--Looking and study the dataset will be the first thing we are looking into

select * from sales_data_sample

---Checking distinct values

select distinct status from sales_data_sample

select distinct YEAR_ID from sales_data_sample

select distinct  productline from sales_data_sample

select distinct country from sales_data_sample

select distinct territory from sales_data_sample

select distinct DEALSIZE 
from sales_data_sample

--overall status on the product order

select status ,count(ordernumber) Frequency
from sales_data_sample
group by status
order by Frequency desc

--Status on the products order shipped,disputed,Resolved,in product,Cancelled by country

select status, count(ordernumber) Frequency, productline,country
from sales_data_sample
group by status,productline,country
order by Frequency desc

--Revenue by Status of the  products orders
select  PRODUCTLINE, sum(sales) Revenue
from sales_data_sample
group by PRODUCTLINE
order by 2 desc


--Which Year as the most sales 
--firstly we look as the the years available in the dataset

select distinct year_id 
from sales_data_sample

-- We only have three years available in the dataset (2003, 2004 and 2005)
--so, we look at the year that as highest sales

select year_id, sum(sales) as Total_Sales, count(ordernumber) Frequency
from sales_data_sample
group by year_id

-- In which month, they sales most what is the Frequency of the order

select month_id, sum(sales) as Monthly_sales, count(ordernumber) Frequency
from sales_data_sample
group by month_id
order by sum(sales) desc



 select month_id, sum(sales) Revenue,COUNT(ordernumber) as  Frequecy
 from sales_data_sample
 group by MONTH_ID
 order by 2 desc

 
 select YEAR_ID, sum(sales) Revenue,COUNT(ordernumber) as  Frequecy
 from sales_data_sample
 group by YEAR_ID
 order by 2 desc

 
 --NOverber seems to be the best, what product do they sells in year 2003

 select month_id, productline, sum(sales) Revenue,COUNT(ordernumber) as  Frequecy
 from sales_data_sample
 where year_id = 2003 and month_id = 11
 group by month_id, productline
 order by Frequecy desc

 --NOverber seems to be the best, what product do they sells in year 2004
 
 select month_id, productline, sum(sales) Revenue,COUNT(ordernumber) as  Frequecy
 from sales_data_sample
 where year_id = 2004 and month_id = 11
 group by month_id, productline
 order by Frequecy desc

 --Top  Customers base on there ordernumber and total spent

select customername,  sum(sales) Total_Spent_by_customer, avg(sales) Avg_Spent_by_customer, count(ordernumber) Frequency 
from sales_data_sample
group by customername
order by Total_Spent_by_customer desc

--Dealsize by Revenue

select dealsize, sum(sales) as Revenue
from sales_data_sample
group by dealsize
order by Revenue desc

--sales across the country

select country, sum(sales) Sales_across_Country, count(ordernumber) Frequency
from sales_data_sample
group by country 
order by  Sales_across_Country desc

