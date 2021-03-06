-- Convert date format of data
alter table unemployment_rate_rural_monthly
add Date date;

update unemployment_rate_rural_monthly
set unemployment_rate_rural_monthly.Date = date_format(str_to_date(` Date`, '%d-%m-%Y'), '%Y-%m-%d');

alter table unemployment_rate_rural_monthly
drop ` Date`;

select * from unemployment_rate_rural_monthly;


-- Rural Unemployment Rate In India over the year 2020
select region,Date,` Estimated Unemployment Rate (%)` as Unemployment_Rate
from unemployment_rate_rural_monthly
where Region = "India";

-- Urban Unemployment Rate In India over the year 2020-21
select region,Date,` Estimated Unemployment Rate (%)` as Unemployment_Rate
from unemployment_rate_urban_monthly
where Region = "India";

-- Total Unemployment Rate In India over the year 2020-21
select region,Date,` Estimated Unemployment Rate (%)` as Unemployment_Rate
from unemployment_rate_total_monthly
where Region = "India";

-- Rural labour Participation Percentage In India over the year 2020-21
select region,Date,` Estimated Labour Participation Rate (%)` as Labour_Paticipation_Rate
from unemployment_rate_rural_monthly
where region = "India";

-- Urban labour Participation Percentage In India over the year 2020-21
select region,Date,` Estimated Labour Participation Rate (%)`  as Labour_Paticipation_Rate
from unemployment_rate_urban_monthly
where region = "India";

-- Total labour Participation Percentage In India over the year 2020-21
select region,Date,` Estimated Labour Participation Rate (%)`  as Labour_Paticipation_Rate
from unemployment_rate_total_monthly
where region = "India";

-- Highest Rural Unemployment rate by states over the year 2020-21
select region,AVG(` Estimated Unemployment Rate (%)`) as avg_unemployment_rate
from unemployment_rate_rural_monthly
group by region
order by 2 desc;

-- Highest Urban Unemployment rate by states over the year 2020-21
select region,AVG(` Estimated Unemployment Rate (%)`) as avg_unemployment_rate
from unemployment_rate_urban_monthly
group by region
order by 2 desc;

-- Highest Total Unemployment rate by states over the year 2020-21
select region,AVG(` Estimated Unemployment Rate (%)`) as avg_unemployment_rate
from unemployment_rate_total_monthly
group by region
order by 2 desc;

-- Avg Rural Unemployment rate by states over the year 2020-21
select region,AVG(` Estimated Unemployment Rate (%)`) as avg_unemployment_rate
from unemployment_rate_rural_monthly
group by region;

-- Avg Urban Unemployment rate by states over the year 2020-21
select region,AVG(` Estimated Unemployment Rate (%)`) as avg_unemployment_rate
from unemployment_rate_urban_monthly
group by region;

-- Avg Total Unemployment rate by states over the year 2020-21
select region,AVG(` Estimated Unemployment Rate (%)`) as avg_unemployment_rate
from unemployment_rate_total_monthly
group by region;



-- Highest Rural Labour Participation Rate by states over the year 2020-21
select region,avg(` Estimated Labour Participation Rate (%)`)  as avg_labour_participation_rate
from unemployment_rate_rural_monthly
group by region
order by 2 desc;

-- Highest Urban Labour Participation Rate by states over the year 2020-21
select region,avg(` Estimated Labour Participation Rate (%)`)  as avg_labour_participation_rate
from unemployment_rate_urban_monthly
group by region
order by 2 desc;

-- Highest Total Labour Participation Rate by states over the year 2020-21
select region,avg(` Estimated Labour Participation Rate (%)`)  as avg_labour_participation_rate
from unemployment_rate_total_monthly
group by region
order by 2 desc;

-- Avg Rural Labour Participation Rate by States over the year 2020-21
select region,avg(` Estimated Labour Participation Rate (%)`) as avg_labour_participation_rate
from unemployment_rate_rural_monthly
group by region;

-- Avg Urban Labour Participation Rate by States over the year 2020-21
select region,avg(` Estimated Labour Participation Rate (%)`) as avg_labour_participation_rate
from unemployment_rate_urban_monthly
group by region;

-- Avg Total Labour Participation Rate by States over the year 2020-21
select region,avg(` Estimated Labour Participation Rate (%)`) as avg_labour_participation_rate
from unemployment_rate_total_monthly
group by region;

-- Avg Rural Employed population by state
select region,Avg(` Estimated Employed`) as Employed_Population
from unemployment_rate_rural_monthly
group by Region;

-- Avg Urban Employed population by state
select region,(` Estimated Employed`) as Employed_Population
from unemployment_rate_urban_monthly
group by Region;

-- Avg Total Employed Population By state
select region,(` Estimated Employed`) as Employed_Population
from unemployment_rate_total_monthly
group by Region;

-- India Rural Unemployment Rate 2020
select Region,Date,` Estimated Unemployment Rate (%)`
from unemployment_rate_rural_monthly
where date between '2020-01-31' and '2020-12-31' and Region="India";