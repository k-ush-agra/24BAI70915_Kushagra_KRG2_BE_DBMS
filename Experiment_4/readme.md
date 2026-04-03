
# Experiment
## Experiment 4: To design and implement PL/SQL (PL/pgSQL) programs using conditional control statements
## Aim
To design and implement PL/SQL (PL/pgSQL) programs using conditional control statements such as IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE constructs to control the flow of execution based on logical conditions and analyze decision-making capabilities in PL/SQL blocks.
## Objective
- To understand decision-making constructs in PL/SQL.
- To implement IF–ELSE, IF–ELSIF–ELSE, and ELSIF ladder statements.
- To apply CASE statements for multi-way branching.
- To analyze program flow based on conditional evaluation.
- To gain hands-on experience with PL/pgSQL blocks in PostgreSQL.

## Software Requirements
- Database: Oracle XE or PostgreSQL (PgAdmin)

## Practical / Experiment Steps
1. Start the system and open Oracle SQL*Plus / Oracle SQL Developer.
2. Connect to the Oracle database using valid username and password.
3. Enable output display by executing the command:
4. SET SERVEROUTPUT ON;
5. Open a new SQL worksheet.
6. Write the required PL/SQL block using the structure:
  - DECLARE
  - variable declarations
  - BEGIN
  - executable statements
  - END;
7. Declare necessary variables using appropriate data types.
8. Apply conditional control statements such as:
   - IF–ELSE
   - IF–ELSIF–ELSE
   - ELSIF ladder
   - CASE statement
9. Use DBMS_OUTPUT.PUT_LINE to display the output.
10. Execute the program by pressing Run or typing /.
11. Observe the output displayed in the Output / DBMS Output window.
12. Verify the correctness of results based on given conditions.
13. Repeat the steps for all problem statements.

## Theory of the Experiment
Conditional control statements allow a PL/SQL program to make decisions and execute
different blocks of code depending on logical conditions.
### 1. IF–ELSE Statement
Used when there are two possible outcomes.
 IF condition THEN
  statements;
 ELSE
  statements;
- END IF;
### 2. IF–ELSIF–ELSE Statement
Used when multiple mutually exclusive conditions are evaluated sequentially.
 IF condition1 THEN
  statements;
 ELSIF condition2 THEN
  statements;
 ELSE
  statements;
 END IF;
### 3. ELSIF Ladder
 An extension of IF–ELSIF–ELSE with multiple conditions checked in order. Execution stops
 at the first true condition.
### 4. CASE Statement
Provides a cleaner alternative to long ELSIF ladders.
 CASE expression
 WHEN value1 THEN statements;
 WHEN value2 THEN statements;
 ELSE statements;
 END CASE;

## Code:
### Program 1: IF–ELSE Statement
 Check whether a number is positive or non-positive

DECLARE
    num NUMBER := 5;
BEGIN
    IF num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number that is Positive is ' || num);
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number that is Non-Positive is ' || num);
    END IF;
END;
### Program 2: IF–ELSIF–ELSE Statement
Evaluate grade based on marks

DECLARE
    marks NUMBER := 82;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade : A');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade : B');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade : C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade : D');
    END IF;
END;
### Program 3: ELSIF Ladder
Determine performance status

DECLARE
    marks NUMBER := 68;
BEGIN
    IF marks >= 85 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Excellent');
    ELSIF marks >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Very Good');
    ELSIF marks >= 55 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Good');
    ELSIF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('Performance : Average');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Performance : Fail');
    END IF;
END;
### Program 4: CASE Statement
Display day name based on day number

DECLARE
    day_no NUMBER := 3;
BEGIN
    CASE day_no
        WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('Monday');
        WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('Tuesday');
        WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('Wednesday');
        WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('Thursday');
        WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('Friday');
        WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('Saturday');
        WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('Sunday');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Invalid Day Number');
    END CASE;
END;

## Input / Output Details

### Input Output table:

| Program Number | Input        | Output                     |
|---------------|--------------|----------------------------|
| Program 1     | num = 5      | The number 5 is Positive   |
| Program 2     | marks = 82   | Grade: B                  |
| Program 3     | marks = 68   | Performance: Good         |
| Program 4     | day_no = 3   | Wednesday                 |



### Analysis
- IF–ELSE provides binary decision control.
- IF–ELSIF–ELSE enables multi-condition evaluation.
- ELSIF ladder executes only the first true condition, improving efficiency.
- CASE statements improve readability and reduce logical complexity.
- PL/pgSQL control structures closely resemble structured programming constructs.

## Screenshots
### IF–ELSE Statement 
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 103935.png" />
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 103947.png" />

### IF–ELSIF–ELSE Statement 
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 103955.png" />
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 104007.png" />

### ELSIF Ladder 
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 104015.png" />
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 104037.png" />

### CASE Statement 
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 104045.png" />
<img width="999" height="189" alt="image" src="Screenshots/Screenshot 2026-01-30 104102.png" />

## Learning Outcome
After completing this experiment, the student will be able to:  
-  Understand the basic structure of a PL/SQL block
- Declare and initialize variables in PL/SQL
- Use the BEGIN–END execution block
- Display output using DBMS_OUTPUT.PUT_LINE
- Develop confidence in writing simple procedural database programs