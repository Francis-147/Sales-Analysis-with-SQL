

select top 100 * from sales_data

select top 100 * from customer_data

--1) Understanding Each column of the data

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'sales_data'

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'customer_data'

select * from sales_data where price is null

select * from customer_data where age is null -- age col has null values


--2) Length of the table
select count(*) from sales_data
select count(*) from customer_data

-- observation: Table contains 99457 record

--3) Check for duplicates in table

select distinct count(*) from sales_data
select distinct count(*) from customer_data 

--observation: No duplicate record in both table

select * from sales_data_bkp

--4) Approximating Price Column to 2 decimal place

--select * into sales_data_bkp from sales_data -- creating a backup table

Alter table sales_data
Alter column price DECIMAL(10,2)



-------------------------Working with Sales Table (EDA) --------------------

select category, count(*) [Count] from sales_data
group by category
order by count(*) Desc

-- observation: Clothings has the highest number of sales while Books has the lowest

select shopping_mall, count(*) [Count] from sales_data
group by shopping_mall
order by count(*) Desc

-- observation: More People bought from Mall of Istanbul while the mall with least sale is Emaar Square Mall

-- Sumamry Statistics of the Price based on categories
select category,count(price) [Count], Min(price) [Min Price], Max(price) [Max Price], Round(Avg(price),2)[Avg price], SUM(price) [Total Sales] from sales_data
group by category
order by  SUM(price) Desc

-- observation: clothing has the highest amount sold while souvenir has the least
--Also the most Expensive category is Technology while Food and bev is the cheapest

-- Sumamry Statistics of the Price based on the shopping mall
select shopping_mall,count(price) [Count], Min(price) [Min Price], Max(price) [Max Price], Round(Avg(price),2)[Avg price], SUM(price) [Total Sales] from sales_data
group by shopping_mall
order by  SUM(price) Desc

-- observation: Mall of Istanbull has the highest amount sold while Forum Istanbul has the least
--Also the minimum and maximum price in each mall is same for each mall

-- Sumamry Statistics of the Quantities Sold based on the shopping mall and the Catgory
select shopping_mall, category, count(quantity) [No of Customers], sum(quantity) [Total Quantity Sold], sum(Price) [Total Price] from sales_data
group by shopping_mall, category
order by  shopping_mall, category,sum(Quantity) desc

-------------------------Working with Customer Table (EDA) --------------------
select top 100 * from customer_data

select distinct count(customer_id) from customer_data

--observation: 99457 customers 

select gender, COUNT(*) [count] from customer_data
group by gender
order by COUNT(*) desc

--observation: Most of the customers where Female

select gender, COUNT(*) [count], min(age) [Min Age], Max(Age) [Max Age], Avg(age) [Averge Age] from customer_data
group by gender
order by COUNT(*) desc

-- observation: the minimum Age of the customers is 18, the max is 69 while the Average is 43

