DECLARE
CURSOR c_job_id IS
    SELECT distinct job_id
    FROM employees
    WHERE job_id = 'IT_PROG';

CURSOR c_empleados(p_job_id VARCHAR2) IS
    select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY 
    from employees
    where job_id=p_job_id
    FOR UPDATE NOWAIT;
BEGIN
  FOR r_job_id IN c_job_id LOOP
  dbms_output.put_line('');
  dbms_output.put_line(r_job_id.job_id);
    FOR r_empleados IN c_empleados(r_job_id.job_id) LOOP
      dbms_output.put_line(r_empleados.first_name||' '||
                          r_empleados.last_name||': '||
                          r_empleados.salary
                          );
      UPDATE employees SET salary = salary + 3 WHERE EMPLOYEE_ID = r_empleados.employee_id;
       
    END LOOP;
    dbms_output.put_line('');
    FOR r_empleados IN c_empleados(r_job_id.job_id) LOOP
      dbms_output.put_line(r_empleados.first_name||' '||
                          r_empleados.last_name||': '||
                          r_empleados.salary
                          );
            
    END LOOP;
  END LOOP;
END;