# Experiment 7 – Design and Performance Analysis of Materialized Views (SanDisk, JTG, PayPal)

## Experiment
**Experiment 7:** Creating and analyzing simple views, complex views, and materialized views to compare execution time and performance differences. This experiment demonstrates query optimization and system performance evaluation in a database environment.

---

## Aim
To design and implement a materialized view and to compare and analyze execution time and performance differences between simple views, complex views, and materialized views, thereby understanding their impact on query optimization and system performance.

---

## Objective
- To create simple views, complex views, and materialized views.  
- To evaluate and compare execution time for different views.  
- To highlight the advantages of materialized views in enterprise-level applications.  
- To analyze the performance benefits of materialized views in data-intensive scenarios.  

---

## Software Requirements

### Database Management System:
- Oracle Database Express Edition (Oracle XE)  
- PostgreSQL Database  

### Database Administration Tool / Client Tool:
- Oracle SQL Developer (for Oracle XE)  
- pgAdmin (for PostgreSQL)  

---

## Problem Statement
In large-scale enterprise systems, frequent execution of complex queries can significantly affect performance. Organizations require optimized mechanisms to improve query response time without compromising data consistency.

---

## Practical / Experiment Steps
1. Create a simple view based on a single employee-related table.  
2. Create a complex view involving joins, filters, or aggregations.  
3. Create a materialized view storing precomputed query results.  
4. Execute queries on all three types of views.  
5. Analyze and compare execution time and performance to determine the most efficient approach for repeated query execution.  

---

## Procedure
1. Open Oracle SQL Developer or pgAdmin and connect to the database.  
2. Create the base tables (e.g., employee, department, payroll).  
3. Insert sample data into the tables.  
4. Create a **simple view** selecting a subset of columns from a single table.  
5. Create a **complex view** using JOINs, aggregations, and filters.  
6. Create a **materialized view** to store the results of a complex query.  
7. Execute `SELECT` queries on all views and record execution times.  
8. Compare performance metrics between simple, complex, and materialized views.  
9. Capture results and screenshots for documentation.  

---

## Input / Output Details

### Input
**Base tables:**  
- employee (id, name, department_id, salary)  
- department (id, name)  
- payroll (employee_id, salary, bonus)  

**Views:**  
- Simple view: SELECT columns from a single table  
- Complex view: JOIN, aggregation, filters  
- Materialized view: Precomputed query results  

---

## Step-wise Output
**Step 1 – Create Base Tables**  

<img width="1439" height="909" alt="image" src="Screenshots/Picture8.png" />

**Step 2 – Insert Sample Data**  
<img width="1422" height="912" alt="image" src="Screenshots/Picture9.png" />


**Step 3 – Create Simple View**  

<img width="1448" height="901" alt="image" src="Screenshots/Picture10.png" />

**Step 4 – Create Complex View**  
<img width="1420" height="914" alt="image" src="Screenshots/Picture11.png" />


**Step 5 – Create Materialized View**  
 <img width="1428" height="906" alt="image" src="Screenshots/Picture12.png" />


**Step 6 – Execute Queries on Views**  

<img width="1416" height="912" alt="image" src="Screenshots/Picture13.png" />

**Step 7 – Compare Performance**  
<img width="1428" height="914" alt="image" src="Screenshots/Picture14.png" />


---

## Learning Outcome
After completing this experiment, the learner will be able to:  
- Understand the concept and working of materialized views in a database system.  
- Differentiate between simple views, complex views, and materialized views.  
- Create and refresh materialized views in PostgreSQL/Oracle.  
- Measure and compare query execution time for different types of views.  
- Analyze performance benefits of materialized views in data-intensive applications.  
- Apply materialized view concepts in real-world scenarios like SanDisk, JTG, and PayPal.x