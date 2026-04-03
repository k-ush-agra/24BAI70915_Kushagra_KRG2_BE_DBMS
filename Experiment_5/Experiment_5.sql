CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);


INSERT INTO employee (id, name, department, salary) VALUES
(1, 'Rahul', 'IT', 50001),
(2, 'Priya', 'HR', 42000),
(3, 'Amit', 'Finance', 35075),
(4, 'Neha', 'IT', 60000),
(5, 'Rohit', 'Marketing', 45555);

SELECT * FROM employee;



SELECT 
    id,
    name,
    department,
    salary,
    CASE
        WHEN salary % 2 = 0 THEN 'Even Salary'
        ELSE 'Odd Salary'
    END AS salary_type
FROM employee;

SELECT * 
FROM employee
WHERE salary % 2 = 1;

SELECT * 
FROM employee
WHERE salary % 2 = 0;
---PL/SQL block to demonstrate IF-ELSE statement