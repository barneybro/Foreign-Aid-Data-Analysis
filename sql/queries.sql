-- Countries with a high strategic value
select * from countries
where strategic_value = "High";

-- All aid projects with a budget over $1000000
select * from aid_projects
where budget_usd > 1000000;

-- All ongoing projects ordered by enddate
select * from aid_projects 
where status = "Ongoing"
order by end_date;

-- All staff assigned to Pakistan
select a.name, c.country_name
from agency_staff a
join countries c on a.country_id = c.country_id
where country_name = "Pakistan";

-- Total Aid Budget by Country
select sum(a.budget_usd) as total_budget, c.country_name
from aid_projects a
join countries c on a.country_id = c.country_id
group by country_name;


-- Average actual spend by category
select avg(actual_spend), category
from aid_projects
group by category;


-- Projects that are overbudget 
select budget_usd, actual_spend
from aid_projects
where actual_spend > budget_usd;


-- All projects with audit flags and theur severities
select e.project_title, a.severity, a.flag_type
from aid_projects e
join audit_flags a on e.project_id = a.project_id;

-- Countries with more than 3 aid projects
select c.country_name, count(*)
from countries c
join aid_projects a on c.country_id = a.country_id
group by c.country_name
having count(*) > 3;


-- Find unstaffed countries receiving aid
select distinct c.country_name
from countries c
join aid_projects a on c.country_id = a.country_id
where c.country_id not in (select distinct country_id from agency_staff);

-- Rank projects by percentage over budget
select project_title, actual_spend, budget_usd,
round(((actual_spend - budget_usd) / budget_usd) * 100, 2) as rounded_budget
from aid_projects
where actual_spend > budget_usd
order by  rounded_budget desc;

-- List the top 3 countries with the most severe audit flags

select c.country_name, count(*) as severe_flags
from countries c
join aid_projects p on c.country_id = p.country_id
join audit_flags a on p.project_id = a.project_id
group by c.country_name
order by severe_flags desc
limit 3;


-- Creating a view (Organizes all the data so you can refer back to it later easier

create view Project_Summary as
select
p.project_title,
c.country_name,
p.category,
p.budget_usd,
p.actual_spend,
p.status
from aid_projects p
join countries c on p.country_id = c.country_id;

select * from Project_Summary;




--  Top 3 Countries by Total Aid Budget
select c.country_name, sum(p.budget_usd) as total_budget
from countries c 
join aid_projects p on c.country_id = p.country_id
group by c.country_name
order by total_budget desc
limit 3;

-- Count of Projects Per Category and Status
select category, status, count(*) as project_count
from aid_projects
group by category, status
order by category, status;

-- Staff Count Assigned to Each Country
select c.country_name, count(a.staff_id) as staff_count
from countries c
join agency_staff a on c.country_id = a.country_id
group by c.country_name;

-- Audit Flags Summary by Type and Severity
select flag_type, severity, count(*) total_flags
from audit_flags
group by flag_type, severity
order by flag_type, severity;

-- Aid Projects with Highest Overspend Amounts
select project_title, budget_usd, actual_spend,
(actual_spend - budget_usd) as overspent
from aid_projects
where actual_spend > budget_usd
order by overspent desc
limit 3
