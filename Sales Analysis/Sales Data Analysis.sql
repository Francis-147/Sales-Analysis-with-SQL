

------ Answering Questions as requested by Employer ----

select top 100 * from sales_data

select top 100 * from customer_data

-- 1) Which Payment method was used most by customers (Cash)

select payment_method, count(customer_id) [count] from customer_data
group by payment_method
order by count(customer_id) desc

-- 2) what is the Total Revenue Generated (68,551,365.91)

select sum(price) [Total Revenue] from sales_data

--3) What is the most popular product category in terms of sales (clothing with over 103,558 items sold)
Select top 1 category, sum(quantity) [Total Quantites Sold]  from sales_data
group by category
order by sum(quantity) desc 

--4) What are the three top shopping malls in terms of sales reveue (Mall of Istanbul, Kanyon, Metrocity)
Select top 3 shopping_mall, sum(price) [Total Sale Revenue]  from sales_data
group by shopping_mall
order by sum(price) desc 

--5) What is the gender distribution across different categories
select category, gender, count(gender) [Customer Count] from sales_data S join customer_data C 
on S.customer_id = C.customer_id
group by category,gender
order by category, gender 

--6) What is the age distribution of customer who prefer each payment method
select age_range, payment_method, count(*) [customer count] from (select 
	case when age between 0 and 25
then '0-25'
	when age between 26 and 50
then '26-50'
	when age between 51 and 75
then '51-75'
	when age between 76 and 100
then '76-100'
	Else 'Other'
	End as age_range, payment_method from customer_data)x 
group by age_range,payment_method
order by  count(*) desc

--7) What is the total revenue generated in the year 2022
select [Total Revenue] from (select year(invoice_date) [Year], sum(price) [Total Revenue] from sales_data
group by year(invoice_date)) x where [year] = 2022

