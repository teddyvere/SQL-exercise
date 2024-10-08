-- LINK : https://en.wikibooks.org/wiki/SQL_Exercises/Employee_management
-- 2.1 Select the last name of all employees.
select lastname from employees;
-- 2.2 Select the last name of all employees, without duplicates.
select distinct lastname from employees where;
-- 2.3 Select all the data of employees whose last name is "Smith".
select * from employees where lastname = 'Smith';
-- 2.4 Select all the data of employees whose last name is "Smith" or "Doe".
select * from employees where lastname = 'Smith' or lastname = 'Doe';

-- 2.5 Select all the data of employees that work in department 14.
select * from employees where department = 14;
-- 2.6 Select all the data of employees that work in department 37 or department 77.
select * from employees where department = 37 or department = 77;
-- 2.7 Select all the data of employees whose last name begins with an "S"
select * from employees where lastname like 'S%';
-- 2.8 Select the sum of all the departments' budgets.
select sum(budget) from departments;
-- 2.9 Select the number of employees in each department (you only need to show the department code and the number of employees).
select count(*), department from employees group by department;
-- 2.10 Select all the data of employees, including each employee's department's data.
select a.*, b.* from employees a  join departments b on (a.department = b.code);
-- 2.11 Select the name and last name of each employee, along with the name and budget of the employee's department.
select a.Name, a.LastName, b.Name, b.budget from Employees a join Departments b on (a.Department = b.Code)
-- 2.12 Select the name and last name of employees working for departments with a budget greater than $60,000.
select a.Name, a.LastName from Employees a join Departments b on (a.Department = b.Code) where b.budget > 60000;
-- 2.13 Select the departments with a budget larger than the average budget of all the departments.
select Name from departments where budget > (select avg(budget) from departments);
-- 2.14 Select the names of departments with more than two employees.
select a.Name from departments a join employees b on (a.Code = b.Department) group by a.name having count(*) > 2
-- 2.15 Very Important - Select the name and last name of employees working for departments with second lowest budget.
select a.Name, a.LastName from Employees a where a.Department = (select b.code from (select * from departments c order by c.budget limit 2) b order by budget desc limit 1 )
-- 2.16  Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11. 
-- And Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
-- 2.17 Reduce the budget of all departments by 10%.
-- 2.18 Reassign all employees from the Research department (code 77) to the IT department (code 14).
-- 2.19 Delete from the table all employees in the IT department (code 14).
-- 2.20 Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
-- 2.21 Delete from the table all employees.
