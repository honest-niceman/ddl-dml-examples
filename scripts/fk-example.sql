-- Create a parent table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create a child table with a foreign key referencing the parent table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert data into the parent table
INSERT INTO departments (department_name) VALUES ('HR'), ('Engineering'), ('Marketing');

-- Insert data into the child table with valid foreign key values
INSERT INTO employees (employee_name, department_id) VALUES ('Alice', 1), ('Bob', 2), ('Charlie', 3);

-- Select data from both tables using a join
SELECT employees.employee_name, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id;