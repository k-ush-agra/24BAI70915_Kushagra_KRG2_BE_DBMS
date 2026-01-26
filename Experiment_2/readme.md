# Experiment 2 – SQL SELECT Queries with WHERE, GROUP BY, HAVING, ORDER BY

## Experiment
Experiment 2: Understanding and implementing SQL SELECT queries using WHERE, ORDER BY, GROUP BY, and HAVING clauses to retrieve and manipulate data efficiently from relational database tables.

## Aim
The aim of this experiment is to practice writing SQL SELECT statements with filtering, grouping, sorting, and aggregate functions to analyze data from relational tables.

## Objective
- To practice writing SQL SELECT statements.  
- To apply filtering conditions using the WHERE clause.  
- To sort query results using the ORDER BY clause.  
- To group records using the GROUP BY clause.  
- To filter grouped data using the HAVING clause.  
- To analyze data using aggregate functions like COUNT(), SUM(), AVG(), MIN(), and MAX().

## Software Requirements
- Database: Oracle XE or PostgreSQL (PgAdmin)

## Practical / Experiment Steps
1. Display the department name and the average salary of employees for each department.  
2. Consider only those employees whose salary is greater than 20,000.  
3. Display only those departments where the average salary is greater than 30,000.  
4. Arrange the final output in descending order of average salary.

## Procedure of the Experiment
1. Start the system and log in to the computer.  
2. Open the required database tool (Oracle XE or PgAdmin).  
3. Connect to the database containing the EMPLOYEE table.  
4. Examine the EMPLOYEE table structure and data.  
5. Write the SQL SELECT query using WHERE, GROUP BY, HAVING, and ORDER BY clauses according to the practical steps.  
6. Execute the query and verify the output.  
7. Note down the results obtained.  
8. Save the work and take screenshots for record.

## Input / Output Details

### Input
- EMPLOYEE table containing columns: emp_id, emp_name, Department, Salary, joining_date.  
- SQL SELECT queries using WHERE, GROUP BY, HAVING, ORDER BY, and aggregate functions.

### Output
- Departments and their average salary for employees with salary > 20,000 and average salary > 30,000.  
- Output arranged in descending order of average salary.  
- Screenshots of query execution and results are attached in the repository.

## CREATING TABLE 
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-26 112840.png" />

### INSERT DATA
<img width="1006" height="261" alt="image" src="Screenshots/Screenshot 2026-01-26 112855.png" />

### Average salary of employees for each department
<img width="1002" height="97" alt="image" src="Screenshots/Screenshot 2026-01-26 122634.png" />
<img width="1051" height="499" alt="image" src="Screenshots/Screenshot 2026-01-26 122644.png" />


### Consider only employees with salary > 20000
<img width="995" height="119" alt="image" src="Screenshots/Screenshot 2026-01-26 122653.png"/>
<img width="1061" height="495" alt="image" src="Screenshots/Screenshot 2026-01-26 122703.png" />


### Departments where avg salary > 30000

<img width="992" height="141" alt="image" src="Screenshots/Screenshot 2026-01-26 122708.png" />
<img width="1059" height="460" alt="image" src="Screenshots/Screenshot 2026-01-26 122715.png" />


### Output: Final output in descending order of average salary
<img width="1004" height="161" alt="image" src="Screenshots/Screenshot 2026-01-26 122721.png" />
<img width="1067" height="475" alt="image" src="Screenshots/Screenshot 2026-01-26 122728.png" />


## Learning Outcome
After completing this experiment, the student will be able to:  
- Filter records using the WHERE clause.  
- Group records using GROUP BY.  
- Apply conditions on grouped data using HAVING.  
- Sort query results using ORDER BY.  
- Analyze data using aggregate functions for meaningful insights.