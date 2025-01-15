# Employee Performance Mapping Using SQL

# Project Overview
This project focuses on analyzing the employee database of ScienceQtech, a growing startup in the Data Science field, to support the Human Resources (HR) department in their year-end appraisal process. Using SQL, the project involved extracting insights from employee data, optimizing database performance, and generating reports to assist in decision-making for salary adjustments, performance evaluations, and employee development programs.

# Objective
The primary goals of this project were:

To analyze and extract meaningful data from the employee database for generating detailed HR reports.
To calculate key metrics such as maximum salary, bonus, and average salary distribution.
To ensure that employees' job profiles align with the organization's standards.
To optimize SQL queries for enhanced performance.
To support the HR team in making data-driven decisions for appraisals and training programs.

# Key Features
# 1. Database Creation and Import
Created a database named employee and imported data from data_science_team.csv, proj_table.csv, and emp_record_table.csv into corresponding tables.

# 2. Entity-Relationship (ER) Diagram
Designed an ER diagram to visualize the relationships between the tables:
emp_record_table
proj_table
data_science_team

# 3. SQL Queries and Analysis
Employee and Department Details: Extracted employee information and department details.
Employee Ratings: Filtered employees based on specific performance criteria.
Concatenated Names: Created a list of concatenated names for employees in the Finance department.
Employees with Reporters: Identified employees with subordinates and calculated the number of reporters.
Union Query: Combined records from the Healthcare and Finance departments.
Departmental Insights: Grouped employee details by department and determined maximum ratings within each department.
Salary Analysis: Computed minimum and maximum salaries for various roles.
Experience-Based Ranking: Ranked employees based on years of experience.
Nested Queries: Identified employees with more than ten years of experience.

# 4. Database Optimization and Enhancements
Stored Procedures and Functions:
Created a stored procedure to fetch employee details based on experience.
Used a stored function to validate job profiles against company standards.
Index Creation: Optimized query performance by creating an index on frequently accessed data.

# 5. Additional Insights
Bonus Calculation: Determined bonuses based on employee ratings and salaries.
Average Salary Distribution: Analyzed salary distribution by continent and country.
View Creation: Created a view to display employees earning salaries above a specified threshold.
Summary of Achievements
Generated detailed reports to support HR appraisal decisions.
Enhanced database query performance through indexing and optimization.
Provided insights into salary distribution, employee ratings, and job profile alignment.
Leveraged stored procedures and functions to streamline complex data retrieval tasks.

# Conclusion
This project demonstrates the use of SQL as a powerful tool for analyzing complex datasets and optimizing database performance. The insights and reports generated facilitated the HR department's appraisal process and strategic planning, aligning employee performance with organizational goals.
