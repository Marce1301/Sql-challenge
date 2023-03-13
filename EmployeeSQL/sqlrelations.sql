CREATE TABLE Employees_4 (
    emp_no INT  NOT NULL PRIMARY KEY,
    emp_title_id varchar NOT null,
    first_name VARCHAR(255)  NOT NULL ,
    last_name VARCHAR(255)  NOT NULL ,
    sex VARCHAR(4)  NOT NULL ,
    hire_date DATE  NOT NULL ,
    birth_date DATE  NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles_3(title_id)
);

CREATE TABLE salary_3 (
    salary INT  NOT NULL,
    emp_no INT  NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees_4(emp_no)
);

CREATE TABLE titles_4 (	
    title_id varchar(10) PRIMARY KEY,
    titles VARCHAR(50)  NOT NULL
)

;CREATE TABLE Departments_4 (
    dept_no INT  NOT NULL PRIMARY KEY ,
    dept_name VARCHAR(50)  NOT NULL 
)

;CREATE TABLE Dept_emp_4 (
    emp_no INT  NOT NULL ,
    dept_no INT  NOT NULL ,
    Foreign key  (dept_no) REFERENCES Departments_4(dept_no)
)

;CREATE TABLE Dept_manager_4 (
    dept_no INT  NOT NULL ,
    emp_no INT  NOT NULL,
	Foreign key  (dept_no) references Departments_4(dept_no)
	
)

;select * from employees_4
;drop table dept_emp_3

	