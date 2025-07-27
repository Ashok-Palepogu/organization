create table employees (
    employee_id int(11) primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    email varchar(100) not null unique,
    phone_number varchar(25) not null,
    hire_date date not null,
    job_id int(11),
    salary decimal(8,2) not null,
    manager_id int(11),
    department_id int(11)
   
);

create table departments (
    department_id int(11) primary key,
    department_name varchar(100) not null,
    location_id int(11)
);

create table jobs (
    job_id int(11) primary key,
    job_title varchar(35) not null,
    min_salary decimal(8,2),
    max_salary decimal(8,2)
);

create table locations (
    location_id int(11) primary key,
    street_address varchar(100),
    postal_code varchar(20),
    city varchar(50) not null,
    state_province varchar(50),
    country_id char(2) not null
);

create table countries (
    country_id char(2) primary key,
    country_name varchar(40) not null,
    region_id int(11)
);

create table regions (
    region_id int(11) primary key,
    region_name varchar(25) not null
);

create table dependents (
    dependent_id int(11) primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    relationship varchar(25) not null,
    employee_id int(11) not null,
    foreign key (employee_id) references employees(employee_id)
);

insert into regions (region_id, region_name) values
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia');

insert into countries (country_id, country_name, region_id) values
('US', 'United States', 2),
('CA', 'Canada', 2),
('GB', 'United Kingdom', 1),
('FR', 'France', 1),
('DE', 'Germany', 1),
('JP', 'Japan', 3),
('CN', 'China', 3);

insert into locations (location_id, street_address, postal_code, city, state_province, country_id) values
(1000, '123 Main St', '12345', 'New York', 'NY', 'US'),
(2000, '456 Elm St', '67890', 'Toronto', NULL, 'CA'),
(3000, '789 Maple Ave', '54321', 'London', NULL, 'GB'),
(4000, '101 Pine St', '11223', 'Paris', NULL, 'FR'),
(5000, '202 Oak St', '33445', 'Berlin', NULL, 'DE'),
(6000, '303 Cedar St', '55667', 'Tokyo', NULL, 'JP'),
(7000, '404 Birch St', '77889', 'Beijing', NULL, 'CN');

insert into departments (department_id, department_name, location_id) values
(10, 'Administration', 1000),
(20, 'Marketing', 2000),
(30, 'Purchasing', 3000),
(40, 'Human Resources', 4000),
(50, 'Shipping', 5000),
(60, 'IT', 6000),
(70, 'Public Relations', 7000);

insert into jobs (job_id, job_title, min_salary, max_salary) values
(1, 'Software Engineer', 60000.00, 120000.00),
(2, 'Data Analyst', 50000.00, 100000.00),
(3, 'Project Manager', 70000.00, 140000.00),
(4, 'HR Specialist', 40000.00, 80000.00),
(5, 'Marketing Manager', 55000.00, 110000.00),
(6, 'Sales Representative', 45000.00, 90000.00);

insert into employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) values
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', '2020-01-15', 1, 90000.00, NULL, 10),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2019-03-22', 2, 80000.00, 1, 20),
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', '555-8765', '2021-06-30', 3, 95000.00, 1, 30),
(4, 'Michael', 'Williams', 'michael.williams@example.com', '555-4321', '2018-11-12', 4, 70000.00, 2, 40),
(5, 'Sarah', 'Brown', 'sarah.brown@example.com', '555-2468', '2022-02-28', 5, 85000.00, 2, 50),
(6, 'David', 'Jones', 'david.jones@example.com', '555-1357', '2020-09-10', 6, 60000.00, 3, 60);

insert into dependents (dependent_id, first_name, last_name, relationship, employee_id) values
(1, 'Alice', 'Doe', 'Daughter', 1),
(2, 'Bob', 'Doe', 'Son', 1),
(3, 'Charlie', 'Smith', 'Son', 2),
(4, 'Diana', 'Johnson', 'Daughter', 3),
(5, 'Ethan', 'Williams', 'Son', 4);

insert into dependents (dependent_id, first_name, last_name, relationship, employee_id) values
(6, 'Fiona', 'Brown', 'Daughter', 5),
(7, 'George', 'Jones', 'Son', 6);

insert into dependents (dependent_id, first_name, last_name, relationship, employee_id) values
(8, 'Hannah', 'Doe', 'Daughter', 1),
(9, 'Ian', 'Smith', 'Son', 2),
(10, 'Jack', 'Johnson', 'Son', 3);
insert into dependents (dependent_id, first_name, last_name, relationship, employee_id) values
(11, 'Kathy', 'Williams', 'Daughter', 4),
(12, 'Liam', 'Brown', 'Son', 5),
(13, 'Mia', 'Jones', 'Daughter', 6);

insert into dependents (dependent_id, first_name, last_name, relationship, employee_id) values
(14, 'Nina', 'Doe', 'Daughter', 1),
(15, 'Oscar', 'Smith', 'Son', 2),
(16, 'Paul', 'Johnson', 'Son', 3),
(17, 'Quinn', 'Williams', 'Daughter', 4),
(18, 'Rita', 'Brown', 'Daughter', 5),
(19, 'Sam', 'Jones', 'Son', 6);

select * from employees;

