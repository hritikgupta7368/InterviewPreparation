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
```sql
SELECT * FROM employees 
WHERE salary > 70000 
ORDER BY hire_date;
```

- Find all employees in IT department whose first name starts with 'J'.

- Show unique department locations from departments table.
  ```sql
  SELECT DISTINCT location 
  FROM departments;
  ```

- List employees who don't have a manager assigned (NULL handling).
  ```sql
  SELECT * 
  FROM employees 
  WHERE manager_id IS NULL;
  ```

- Display count of employees in each department.
  ```sql
  SELECT d.department_name, COUNT(e.emp_id) as emp_count
  FROM departments d
  LEFT JOIN employees e ON d.department_id = e.department_id
  GROUP BY d.department_name;
  ```

- Find average, minimum, and maximum salary for each department.
```sql
SELECT d.department_name,
    AVG(e.salary) as avg_salary,
    MIN(e.salary) as min_salary,
    MAX(e.salary) as max_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;
```

- Show departments having more than 2 employees.
```sql
SELECT d.department_name, COUNT(e.emp_id) as emp_count
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.emp_id) > 2;
```

- List departments where average salary is above 75000.
```sql
SELECT d.department_name, AVG(e.salary) as avg_salary
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 75000;
```

- Display employee names with their department names using INNER JOIN.
```sql
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;
```

- Show all departments and their employees using LEFT JOIN (including departments with no employees).
```sql
SELECT d.department_name, e.first_name, e.last_name
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id;
```

- List employees with their manager name and department name.
```sql
SELECT e.first_name as emp_name, 
       m.first_name as manager_name,
       d.department_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id
JOIN departments d ON e.department_id = d.department_id;
```

- Show projects with department name and number of employees assigned.
```sql
```

- Find employees whose last name contains 'son'.
```sql
```

- Display employee names in uppercase and their email domains.
```sql
```

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

