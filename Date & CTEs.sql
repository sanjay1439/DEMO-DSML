use farmers_market;
#1.
select *, month (market_date) as month_, year (market_date) as year_  from vendor_inventory

#2.
select *, hour (fun) as month_ from (
#making a date
select market_date, market_start_time, str_to_date(concat(market_date, market_start_time),'%Y-%m-%d%h:%i') as fun from market_date_info
)abc

Refer: https://www.geeksforgeeks.org/str_to_date-function-in-mysql/#:~:text=STR_TO_DATE()%20%3A,is%20passed%20as%20an%20argument.

#3. Date Add
select *, date_add(fun,interval 30 minute) as checker from 
#interval 30 day
(
select market_date, market_start_time, str_to_date(concat(market_date, market_start_time),'%Y-%m-%d%h:%i %p') as fun from market_date_info
)abc

#4. Date diff

select *, DATEDIFF (checker , fun) as differ from (
 select *, date_add(fun,interval 30 Day) as checker from 
#interval 30 day
(
select market_date, market_start_time, str_to_date(concat(market_date, market_start_time),'%Y-%m-%d%h:%i %p') as fun 
from market_date_info
)abc
)mno
