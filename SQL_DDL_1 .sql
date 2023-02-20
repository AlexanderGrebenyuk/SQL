//1. ������� employees

//������� ������� employees
//id. serial,  primary key,
//employee_name. Varchar(50), not null

�reate table employees(
id serial primary key,
employee_name Varchar(50) not null
);


//��������� ������� employee 70 ��������.

insert into employees (employee_name)
values ('Natalie'),
       ('Nicola'),
       ('Olivia'),
       ('Penelope'),
       ('Jake'),
       ('Rachel'),
       ('Rebecca'),
       ('Rose'),
       ('Ruth'),	 
       ('Sally'),
       ('Connor'),
       ('Charlie'),
       ('Ethan'),
       ('David'),
       ('Richard'),
       ('Joseph'),
       ('Charles'),
       ('Thomas'),
       ('Ruth'),	 
       ('James'),
       ('Oliver'),
       ('Jack'),
       ('Harry'),
       ('Jacob'),
       ('Charlie'),
       ('Thomas'),
       ('George'),
       ('Oscar'),
       ('James'),	 
       ('William'),
       ('Jake'),
       ('Connor'),
       ('Callum'),
       ('Kyle'),
       ('Joe'),
       ('Reece'),
       ('Rhys'),
       ('Charlie'),
       ('Damian'),	 
       ('Noah'),
       ('Liam'),
       ('Mason'),
       ('William'),
       ('Ethan'),
       ('Michael'),
       ('Alexander'),
       ('Daniel'),
       ('Robert'),
       ('Ruth'),	 
       ('Sally'),
       ('Natalie'),
       ('Nicola'),
       ('Mark'),
       ('Penelope'),
       ('Christopher'),
       ('Rachel'),
       ('Joseph'),
       ('Rose'),
       ('Ruth'),	 
       ('Sally'),
       ('Kevin'),
       ('Andrew'),
       ('Olivia'),
       ('Penelope'),
       ('Pippa'),
       ('Steven'),
       ('Ronald'),
       ('Timothy'),
       ('Gary'),	 
       ('Eric');
      
//2. ������� salary

//������� ������� salary
//id. Serial  primary key,
//monthly_salary. Int, not null
      
      create table salary(
	id serial primary key,
	monthly_salary int not null
);
//��������� ������� salary 15 ��������:
//1000
//1100
//1200
//1300
//1400
//1500
//1600
//1700
//1800
//1900
//2000
//2100
//2200
//2300
//2400
//2500

insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
      select * from employees;

//3. ������� employee_salary

//������� ������� employee_salary
//id. Serial  primary key,
//employee_id. Int, not null, unique
//salary_id. Int, not null
     
     create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
//��������� ������� employee_salary 40 ��������:
//� 10 ����� �� 40 �������� �������������� employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 15),
	   (16, 16),
	   (17, 17),
	   (18, 18),
	   (19, 19),
	   (20, 20),
	   (21, 21),
	   (22, 22),
	   (23, 23),
	   (24, 24),
	   (25, 25),
	   (26, 26),
	   (27, 27),
	   (28, 28),
	   (29, 29),
	   (71, 30),
	   (72, 31),
	   (73, 32),
	   (74, 33),
	   (75, 34),
	   (76, 35),
	   (77, 36),
	   (78, 37),
	   (79, 38),
	   (80, 39),
	   (81, 40);


select * from employee_salary;

//4. ������� roles

//������� ������� roles
//id. Serial  primary key,
//role_name. int, not null, unique
create table roles (
	id serial primary key,
	role_name int not null unique
);
//�������� ��� ������ role_name � int �� varchar(30)
ALTER TABLE roles 
ALTER COLUMN role_name
TYPE varchar(30);

select column_name, data_type
FROM  information_schema.columns
WHERE table_name = 'roles';

//��������� ������� roles 20 ��������:

insert into roles (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),   
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
	  select * from roles_employee;
	 
	 
	-- 5. ������� roles_employee
//������� ������� roles_employee
//id. Serial  primary key,
//employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
//role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

	 create table roles_employee(
	id serial  primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

//��������� ������� roles_employee 40 ��������:

insert into roles_employee (employee_id, role_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7), 
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16), 
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,4),
	   (25,5),
	   (26,6),
	   (27,7), 
	   (28,8),
	   (29,9),
	   (30,4),
	   (31,1),
	   (32,2),
	   (33,3),
	   (34,4),
	   (35,5),
	   (36,6),
	   (37,7),
	   (38,8), 
	   (39,9),
	   (40,4);