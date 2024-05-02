-- Delete the table "departments"
DROP TABLE if exists departments;
-- Re-create the table "departments" within database
CREATE TABLE departments (
  dept_no VARCHAR(5) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

DROP TABLE if exists titles;
-- Re-create the table "titles" within database
CREATE TABLE titles (
  title_id VARCHAR(5) PRIMARY KEY,
  title VARCHAR(30)
);

-- Delete the table "employees"
DROP TABLE if exists employees;
-- Re-create the table "employees" within database
CREATE TABLE employees (
  emp_no VARCHAR(10) PRIMARY KEY,
  emp_title_id VARCHAR(5) REFERENCES titles(title_id),
  birth_date VARCHAR(10) NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date VARCHAR(10) NOT NULL
);

-- Delete the table "dept_emp"
DROP TABLE if exists dept_emp;
-- Re-create the table "dept_emp" within database
CREATE TABLE dept_emp (
  emp_no VARCHAR(10) REFERENCES employees(emp_no),
  dept_no VARCHAR(10) REFERENCES departments(dept_no)
);

-- Delete the table "dept_manager"
DROP TABLE if exists dept_manager;
-- Re-create the table "dept_manager" within database
CREATE TABLE dept_manager (
  dept_no VARCHAR(5) REFERENCES departments(dept_no),
  emp_no VARCHAR(10) NOT NULL
);

-- Delete the table "salaries"
DROP TABLE if exists salaries;
-- Re-create the table "salaries" within database
CREATE TABLE salaries (
  emp_no VARCHAR(10) REFERENCES employees(emp_no),
  salary int
);


