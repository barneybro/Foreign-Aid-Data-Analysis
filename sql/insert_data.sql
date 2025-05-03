INSERT INTO Countries (country_id, country_name, region, strategic_value) VALUES
(1, 'Nigeria', 'Africa', 'High'),
(2, 'Ukraine', 'Africa', 'Low'),
(3, 'Colombia', 'South America', 'Medium'),
(4, 'Thailand', 'Europe', 'High'),
(5, 'Egypt', 'Europe', 'High'),
(6, 'Kenya', 'Europe', 'High'),
(7, 'Philippines', 'Africa', 'High'),
(8, 'Pakistan', 'Middle East', 'High');


INSERT INTO Aid_Projects (project_id, country_id, project_title, category, start_date, end_date, budget_usd, actual_spend, status) VALUES
(1, 1, 'Project A', 'Infrastructure', '2022-10-28', '2024-10-15', 1144427.87, 1092137.17, 'Completed'),
(2, 5, 'Project B', 'Infrastructure', '2021-01-07', '2021-11-29', 1628389.39, 1690553.74, 'Planned'),
(3, 4, 'Project C', 'Health', '2021-12-11', '2022-07-08', 1916565.49, 2042961.28, 'Ongoing'),
(4, 6, 'Project D', 'Health', '2021-02-14', '2023-09-12', 1227265.76, 1817802.77, 'Ongoing'),
(5, 2, 'Project E', 'Security', '2022-10-06', '2024-06-30', 1126479.23, 1356446.02, 'Completed'),
(6, 2, 'Project F', 'Health', '2021-08-22', '2023-04-06', 139357.55, 194922.53, 'Planned'),
(7, 7, 'Project G', 'Education', '2022-10-13', '2023-10-21', 592048.53, 627054.39, 'Planned'),
(8, 5, 'Project H', 'Health', '2022-12-01', '2024-09-24', 1418549.61, 1739697.47, 'Planned'),
(9, 4, 'Project I', 'Education', '2022-01-24', '2023-07-30', 368634.86, 471568.76, 'Planned'),
(10, 4, 'Project J', 'Security', '2021-11-20', '2024-02-19', 1652515.06, 1398576.41, 'Completed'),
(11, 6, 'Project K', 'Infrastructure', '2022-05-27', '2023-07-06', 464621.76, 418164.28, 'Planned'),
(12, 4, 'Project L', 'Infrastructure', '2022-07-06', '2023-04-01', 1502728.52, 2146611.65, 'Ongoing'),
(13, 6, 'Project M', 'Infrastructure', '2021-05-22', '2024-03-30', 477675.48, 412538.02, 'Planned'),
(14, 2, 'Project N', 'Health', '2021-06-13', '2023-10-25', 348040.57, 372172.70, 'Completed'),
(15, 8, 'Project O', 'Health', '2022-07-21', '2024-12-18', 1081772.97, 1380556.92, 'Planned'),
(16, 5, 'Project P', 'Security', '2021-12-15', '2022-07-31', 1548767.53, 1710359.24, 'Ongoing'),
(17, 1, 'Project Q', 'Education', '2021-09-27', '2024-07-18', 1909941.06, 2206702.30, 'Planned'),
(18, 5, 'Project R', 'Education', '2022-06-04', '2024-02-17', 1691255.23, 1533947.33, 'Planned'),
(19, 1, 'Project S', 'Health', '2022-05-16', '2022-06-04', 1217941.94, 1766465.27, 'Ongoing'),
(20, 4, 'Project T', 'Health', '2022-08-04', '2022-10-23', 162954.07, 213850.38, 'Planned');


INSERT INTO Agency_Staff (staff_id, name, role, country_id, assignment_date) VALUES
(1, 'Agent_1', 'Diplomat', 3, '2021-09-20'),
(2, 'Agent_2', 'Auditor', 8, '2021-12-05'),
(3, 'Agent_3', 'Diplomat', 7, '2022-03-10'),
(4, 'Agent_4', 'Auditor', 4, '2022-10-01'),
(5, 'Agent_5', 'Diplomat', 6, '2023-06-17'),
(6, 'Agent_6', 'Analyst', 8, '2021-09-05'),
(7, 'Agent_7', 'Auditor', 4, '2021-05-12'),
(8, 'Agent_8', 'Diplomat', 1, '2022-04-17'),
(9, 'Agent_9', 'Analyst', 4, '2021-01-15'),
(10, 'Agent_10', 'Analyst', 1, '2022-04-14'),
(11, 'Agent_11', 'Analyst', 1, '2022-11-08'),
(12, 'Agent_12', 'Diplomat', 4, '2022-07-25'),
(13, 'Agent_13', 'Diplomat', 8, '2022-03-15'),
(14, 'Agent_14', 'Analyst', 3, '2023-08-27'),
(15, 'Agent_15', 'Analyst', 8, '2023-04-14');


INSERT INTO Audit_Flags (flag_id, project_id, flag_type, flag_date, severity) VALUES
(1, 4, 'Suspicious', '2022-04-10', 'Medium'),
(2, 14, 'Suspicious', '2023-02-25', 'High'),
(3, 2, 'Overbudget', '2023-11-21', 'Low'),
(4, 13, 'Missing Staff', '2024-01-16', 'Low'),
(5, 8, 'Late', '2022-07-16', 'High'),
(6, 15, 'Suspicious', '2022-05-24', 'Low'),
(7, 9, 'Late', '2023-04-19', 'Low'),
(8, 15, 'Overbudget', '2023-07-18', 'Low'),
(9, 18, 'Overbudget', '2022-01-16', 'Low'),
(10, 6, 'Suspicious', '2023-02-21', 'Medium');
