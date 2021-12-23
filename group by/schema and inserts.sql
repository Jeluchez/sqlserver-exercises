drop table if exists employee
drop  table if exists department

create table department (
	departmentId int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),

)
create table employee (
	employeeId int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),
	email varchar (255),
	phoneNumber varchar (10),
	salary DECIMAL(10,2),
	jobId int,
	departmentId int,
	FOREIGN KEY(departmentId) REFERENCES department(departmentId)
)

insert into department (name) 
values	('Administration'),
		('Marketing'),
		('IT')

insert into employee (name,email,phoneNumber,salary,jobId,departmentId) 
values	('Lucia','lucia@gmail.com','3001111111',1000,1,1),
		('Diego','diego@gmail.com','3002222222',1200,2,2),
		('Maria','maria@gmail.com','3003333333',1150,3,3),
		('Jei','jei@gmail.com','3004444444',1050,2,1),
		('May','may@gmail.com','300555555',1350,3,2),
		('Ben','ben@gmail.com','300666666',1050,2,1),
		('Din','din@gmail.com','300666666',1050,3,3)



