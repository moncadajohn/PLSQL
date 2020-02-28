DECLARE
CURSOR c_job_id IS
    SELECT distinct job_id
    FROM employees;

CURSOR c_empleados(p_job_id VARCHAR2) IS
    select FIRST_NAME,LAST_NAME 
    from employees
    where job_id=p_job_id;
BEGIN
  FOR r_job_id IN c_job_id LOOP
  dbms_output.put_line('');
  dbms_output.put_line(r_job_id.job_id);
    FOR r_empleados IN c_empleados(r_job_id.job_id) LOOP
      dbms_output.put_line(r_empleados.first_name||' '||
                          r_empleados.last_name                          
                          );
        
    END LOOP;
  END LOOP;
END;