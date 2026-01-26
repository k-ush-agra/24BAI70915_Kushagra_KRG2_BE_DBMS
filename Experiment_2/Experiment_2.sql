CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

INSERT INTO employee VALUES
(1, 'Amit',   'HR',        25000, '2022-01-15'),
(2, 'Neha',   'HR',        35000, '2021-03-10'),
(3, 'Rahul',  'IT',        45000, '2020-07-22'),
(4, 'Sneha',  'IT',        55000, '2019-11-05'),
(5, 'Karan',  'Finance',  18000, '2023-02-01'),
(6, 'Pooja',  'Finance',  42000, '2021-06-18'),
(7, 'Rohit',  'Sales',    30000, '2020-09-12'),
(8, 'Anjali', 'Sales',    48000, '2018-04-25');

SELECT * FROM employee;

SELECT department,AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department,AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department,AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department;

SELECT department,AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000;

SELECT department,AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
