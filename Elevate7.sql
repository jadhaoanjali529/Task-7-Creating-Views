CREATE TABLE A (
dept_id INTEGER PRIMARY KEY,
dept_name TEXT
);

CREATE TABLE B (
emp_id INTEGER PRIMARY KEY,
emp_name TEXT,
dept_id INTEGER,
salary INTEGER,
FOREIGN KEY (dept_id) REFERENCES A(dept_id)
);

INSERT INTO A VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO B VALUES
(101, 'Aditya', 2, 60000),
(102, 'Tejas', 1, 45000),
(103, 'Raj', 2, 55000),
(104, 'Riya', 3, 70000);

CREATE VIEW BAView AS
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

