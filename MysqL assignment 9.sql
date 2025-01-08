use country;
create table Kitex ( Worker_id INT primary key, FirstName CHAR(25), LastName CHAR(25), 
Salary INT, JoiningDate DATETIME, Department CHAR(25));
delimiter $$
create procedure adding_details (in Worker_id INT,in FirstName CHAR(25),in LastName CHAR(25), 
in Salary INT,in JoiningDate DATETIME,in Department CHAR(25))
begin
insert into Kitex values(Worker_id,FirstName,LastName, 
Salary,JoiningDate,Department);
end $$
Delimiter ;
call adding_details(1,'Noel', 'Francis',15000,'2001-12-10','science');
call adding_details(2,'Varghese', 'Antony',20000,'2005-08-10','science');
call adding_details(3,'Neha', 'Manoj',25000,'2010-12-09','Mathamatics');
call adding_details(4,'Arun', 'Shivan',10000,'2013-12-10','Economics');
call adding_details(5,'Kirthika', 'Mohan',30000,'2021-01-29','Mathamatics');
call adding_details(6,'raheal', 'John',25000,'2006-11-16','Commers');
call adding_details(7,'Micheal', 'Jesus',20000,'2010-05-16','Commers');
call adding_details(8,'Varun', 'Vinu',35000,'2014-07-19','science');
select*from Kitex;
Delimiter $$
create procedure Salary_ofworker(IN worker_no int,out p_salary int)
begin
select Salary from Kitex where Worker_no = Worker_id;
end $$
Delimiter ;
call Salary_ofworker(1,@p_salary);
call Salary_ofworker(5,@p_salary);
Delimiter $$
create procedure update_department( IN Worker_no int, IN Department1 char(25))
begin
update Kitex set Department = Department1 where Worker_no = Worker_id;
end $$
Delimiter ;
call update_department(2,'Maths');
select*from Kitex;
call update_department(3,'Science');
Delimiter $$
create procedure Worker_count(In Department2 char(25), out Workers_count int)
begin
select count(Department)from Kitex where Department2 = Department;
end $$
Delimiter ;
call Worker_count('Science',@Workers_count);
Delimiter $$
create procedure Avg_salary (in Department3 char(25), out p_avgSalary int)
begin
select avg(Salary) from Kitex where Department3 = Department;
end $$
delimiter ;
call Avg_salary('Maths',@p_avgSalary);
drop procedure Avg_salary;
