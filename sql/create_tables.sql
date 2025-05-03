create table countries (
    country_id int primary key,
    country_name varchar(100),
    region varchar(50),
    strategic_value varchar(10)
);

create table aid_projects (
    project_id int primary key,
    country_id int,
    project_title varchar(150),
    category varchar(50),
    start_date date,
    end_date date,
    budget_usd decimal(12,2),
    actual_spend decimal(12,2),
    status varchar(20),
    foreign key (country_id) references countries(country_id)
);

create table agency_staff (
    staff_id int primary key,
    name varchar(100),
    role varchar(50),
    country_id int,
    assignment_date date,
    foreign key (country_id) references countries(country_id)
);

create table audit_flags (
    flag_id int primary key,
    project_id int,
    flag_type varchar(50),
    flag_date date,
    severity varchar(10),
    foreign key (project_id) references aid_projects(project_id)
);
