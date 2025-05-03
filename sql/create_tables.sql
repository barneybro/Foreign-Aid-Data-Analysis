CREATE TABLE Countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    region VARCHAR(50),
    strategic_value VARCHAR(10) 
);
CREATE TABLE Aid_Projects (
    project_id INT PRIMARY KEY,
    country_id INT,
    project_title VARCHAR(150),
    category VARCHAR(50), 
    start_date DATE,
    end_date DATE,
    budget_usd DECIMAL(12,2),
    actual_spend DECIMAL(12,2),
    status VARCHAR(20), 
    FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);
CREATE TABLE Agency_Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50), 
    country_id INT,
    assignment_date DATE,
    FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);
CREATE TABLE Audit_Flags (
    flag_id INT PRIMARY KEY,
    project_id INT,
    flag_type VARCHAR(50), 
    flag_date DATE,
    severity VARCHAR(10), 
    FOREIGN KEY (project_id) REFERENCES Aid_Projects(project_id)
);
