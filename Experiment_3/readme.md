
# Experiment
## Experiment 3: To understand the basic structure of a PL/SQL 
## Aim
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

## Objective
- To create a simple PL/SQL program demonstrating:
- Declaration Section (DECLARE)
- Execution Section (BEGIN … END)
- Output using DBMS_OUTPUT.PUT_LINE

## Software Requirements
- Database: Oracle XE or PostgreSQL (PgAdmin)

## Practical / Experiment Steps
1. Open pgAdmin / SQL environment (conceptual PL/SQL execution).
2. Enable server output:
3. SET SERVER OUTPUT ON;
4. Write a PL/SQL block with:
  - Employee ID
  - Employee Name
  - Employee Salary
5. Assign values inside the execution section.
6. Display output using DBMS_OUTPUT.PUT_LINE.
7. Execute the block and observe the output.

## Theory of the Experiment
1. A PL/SQL block consists of three main sections:
### Declaration Section (DECLARE)
   Variables, constants, cursors are declared here.
### Execution Section (BEGIN … END)
   Contains executable statements.
### Exception Section (EXCEPTION) (optional)
   Think of it like a human:
-    DECLARE → Memory
-    BEGIN → Action
-    END → Closure
## Input / Output Details

### Input

| Variable     | Value        |
|--------------|--------------|
| `emp_id`     | 101          |
| `emp_name`   | Rahul Sharma |
| `emp_salary` | 45000        |


### Output
- Employee ID : 101
- Employee Name : Rahul Sharma
- Employee Salary : 45000

## DECLARATION 
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 100027.png" />

### OUTPUT
<img width="1006" height="261" alt="image" src="Screenshots/Screenshot 2026-01-30 100031.png" />


## Learning Outcome
After completing this experiment, the student will be able to:  
-  Understand the basic structure of a PL/SQL block
- Declare and initialize variables in PL/SQL
- Use the BEGIN–END execution block
- Display output using DBMS_OUTPUT.PUT_LINE
- Develop confidence in writing simple procedural database programs