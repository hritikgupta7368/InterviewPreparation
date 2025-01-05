Index
- Sql
    - Theory
    - Problems

## Theory
## Problems

## SQL Database Schema


##### Employees Table
| emp_id PK | first_name | last_name | email | phone | hire_date | salary | department_id FK | manager_id FK |
|--------|------------|-----------|-------|-------|-----------|--------|---------------|------------|
|1|john|doe|john.doe@company.com|1234567890|2020-01-15|85000.00|1|NULL|
|2|jane|smith|jane.smith@company.com|12345678901|2020-02-20|75000.00|1|1|
|3|mike|johnson|mike.johnson@company.com|3456789012|2020-03-10|65000.00|2|1|

##### Department Table

| department_id PK | department_name | location | budget |
|------------------|-----------------|----------|--------|
|1|IT|New York|1000000.00|
|2|HR|Chicago|500000.00|
|3|Marketing|Los Angeles|750000.00|

##### Projects Table
| project_id PK | project_name | start_date | end_date | department_id FK |
|---------------|--------------|------------|-----------|------------------|
|1|Website Redesign|2023-01-01|2023-06-30|1|
|2|HR System Implementation|2023-02-01|2023-08-31|2|
|3|Marketing Campaign|2023-03-01|2023-12-31|3|
|4|Financial Analysis|2023-04-01|2023-09-30|4|

##### Employee Projects Table
| emp_id PK FK | project_id PK FK | role | hours_allocated |
|--------------|------------------|------|-----------------|
|1|1|Project Lead|40|
|2|1|Developer|35|
|3|2|Analyst|30|
|4|3|Marketing Lead|40|
|5|4|Financial Analyst|35|

### Relationships
- Employee → Department (Many-to-One)
- Employee → Manager (Self-referential)
- Project → Department (Many-to-One)
- Employee ↔ Project (Many-to-Many through Employee_Projects)

## Problems

- List all employees with salary greater than 70000, ordered by their hire date.

- Find all employees in IT department whose first name starts with 'J'.

- Show unique department locations from departments table.

- List employees who don't have a manager assigned (NULL handling).

- Display count of employees in each department.

- Find average, minimum, and maximum salary for each department.

- Show departments having more than 2 employees.

- List departments where average salary is above 75000.

- Display employee names with their department names using INNER JOIN.

- Show all departments and their employees using LEFT JOIN (including departments with no employees).

- List employees with their manager name and department name.

- Show projects with department name and number of employees assigned.

- Find employees whose last name contains 'son'.

- Display employee names in uppercase and their email domains.

- List employees hired in first quarter of 2020.

- Calculate tenure (in years) for each employee.

- List all employees who earn more than the average salary of their department.

- Find employees hired in 2020 who work in the IT department.

- Display employee names along with their manager names and department names.

- Find projects that have no employees assigned to them (using LEFT JOIN).

- List departments with their total salary budget utilization (sum of employee salaries vs department budget).

- Show project count and employee count for each department.

- Find employees who earn more than their managers.

- List departments that have more employees than the average number of employees per department.

- Rank employees by salary within each department.

- Calculate the running total of project hours allocated per employee.

### Intermediate ones

- Find employees who earn more than the average salary of their respective departments.

- List projects with more than average number of employee allocations.

- Find employees who have higher salary than any employee in the IT department.

- Display departments having more budget than all departments in 'New York'.

