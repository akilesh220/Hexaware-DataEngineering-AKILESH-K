CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, employee_name, department_id, salary) VALUES
(1, 'aravind', 1, 50000.00),
(2, 'lakshmi', 1, 55000.00),
(3, 'akshay das', 2, 60000.00),
(4, 'wilson', 2, 62000.00),
(5, 'adarsh anand', 3, 48000.00);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');


SELECT employees.*, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;


SELECT employees.*, departments.*
FROM employees
CROSS JOIN departments;


SELECT employees.*, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

SELECT employees.*, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;
