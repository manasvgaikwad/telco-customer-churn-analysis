create database telcodatabase;

use telcodatabase;

select * from telco;
---------------------------------------------------------------------------------------------------------------------------------------------
-- What is the overall churn rate?
select round(sum(churn='Yes') * 100/ count(*),2)as churn_rate
from telco;

-- Which Contract type has the highest churn rate?
select contract,
	round(sum(churn='Yes') * 100/ count(*),2)as churn_rate
from telco
group by contract
order by churn_rate desc;

-- Average tenure — churned vs. retained
select avg(tenure) as avg_tenure, churn
from telco
group by churn;

-- Average MonthlyCharges — churned vs. retained
select avg(monthlycharges) as avg_monthlycharges, churn
from telco
group by churn
order by churn desc;

-- Churn rate by InternetService type
select internetservice, round(sum(churn = 'Yes') * 100 / count(*),2) as churn_rate
from telco
group by internetservice
order by churn_rate desc;

-- Churn rate by PaymentMethod
select paymentmethod, round(sum(churn='Yes') * 100 / count(*),2) as churn_rate
from telco
group by paymentmethod
order by churn_rate desc;

-- Does having Partner/Dependents reduce churn rate?
select partner, dependents, count(*) as total, sum(churn = 'Yes') as churned, round(sum(churn = 'Yes') * 100 / count(*),2) as churn_rate
from telco
group by partner, dependents
order by churn_rate desc;

-- Does SeniorCitizen status affect churn rate?
select seniorcitizen, count(*) as total, sum(churn='Yes') as churned,
    round(sum(churn='Yes') * 100 / count(*), 2) as churn_rate
from telco
group by seniorcitizen
order by churn_rate desc;

-- Does having TechSupport or OnlineSecurity reduce churn?
select techsupport, onlinesecurity, count(*) as total, sum(churn='Yes') as churned,
    round(sum(churn='Yes') * 100 / count(*), 2) as churn_rate
from telco
group by techsupport, onlinesecurity
order by churn_rate desc;

-- Which customer segments (contract + tenure bracket + internet service) have the highest churn — who should retention prioritize?
select contract,
	case
		when tenure <= 12 then '0-12'
        when tenure <= 24 then '13-24'
        when tenure <= 48 then '25-48'
        else '48+'
	end as tenure_bracket,
    internetservice,
    count(*) as total,
    sum(churn = 'Yes') as churned,
    round(sum( churn = 'Yes') * 100 / count(*) ,2) as churn_rate
from telco
group by contract, tenure_bracket, internetservice
order by churn_rate desc
limit 15;