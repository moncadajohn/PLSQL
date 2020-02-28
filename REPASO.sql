describe employees;

select * from employees order by salary desc;

select salary  from employees where salary >= 25000;

--uso del between
select job_id, salary 
from employees
where salary BETWEEN(select salary  from employees where salary >= 25000) and 30000;

--uso del in / not in
select first_name, salary from employees
where salary not in(11000,12100,11550);

--USO DEL LIKE Y NOT LIKE

SELECT FIRST_NAME FROM EMPLOYEES
WHERE FIRST_NAME NOT LIKE '%a%';