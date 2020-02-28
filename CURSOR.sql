DECLARE
CURSOR c_empleados(p_id NUMBER) IS
    select FIRST_NAME,LAST_NAME,SALARY,JOB_ID 
    from employees
    where DEPARTMENT_ID=p_id;
BEGIN
    FOR r_empleados IN c_empleados(60) LOOP
      dbms_output.put_line(r_empleados.first_name||' '||
                          r_empleados.last_name||': '||
                          r_empleados.salary
                          );
        
    END LOOP;
END;