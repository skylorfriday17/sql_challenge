CREATE TABLE departments(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles(
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE employees(
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(30) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(30) NOT NULL,
    hire_date DATE
);

CREATE TABLE dept_emp(
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INTEGER NOT NULL
);