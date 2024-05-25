create database hotel_revenue_project;

with hotels as (
select * from `2018`
union
select * from `2019`
union 
select * from `2020`)

/**
select arrival_date_year, 
sum((stays_in_weekend_nights + stays_in_week_nights) * adr) as revenue
from hotels
group by arrival_date_year
**/

select * from hotels
left join market_segment
on hotels.market_segment = market_segment.market_segment
left join meal_cost
on hotels.meal = meal_cost.meal
