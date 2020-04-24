DECLARE
  CURSOR C_DEPT_CURSOR IS
    SELECT DEPARTMENT_ID, DEPARTMENT_NAME
    FROM DEPARTMENTS
    WHERE DEPARTMENT_ID < 100
    ORDER BY DEPARTMENT_ID; 
    
  CURSOR C_EMP_CURSOR(V_DEPTNO NUMBER)IS
    SELECT LAST_NAME, JOB_ID, HIRE_DATE,SALARY  
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = V_DEPTNO
    AND EMPLOYEE_ID < 120;
    
    V_DEPT_ID DEPARTMENTS.DEPARTMENT_ID%TYPE;
    V_DEPT_NAME DEPARTMENTS.DEPARTMENT_NAME%TYPE;
    
    V_LAST_NAME EMPLOYEES.LAST_NAME%TYPE;
    V_JOB_ID EMPLOYEES.JOB_ID%TYPE;
    V_HIRE_DATE EMPLOYEES.HIRE_DATE%TYPE;
    V_SALARY EMPLOYEES.SALARY%TYPE;
    
BEGIN
  OPEN C_DEPT_CURSOR;
  LOOP
    FETCH C_DEPT_CURSOR INTO V_DEPT_ID, V_DEPT_NAME;
    EXIT WHEN C_DEPT_CURSOR%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('DEPARTMENT NUMBER: '||V_DEPT_ID||' DEPARTMENT NAME: '||V_DEPT_NAME);
 
  
  IF C_EMP_CURSOR%ISOPEN THEN
  CLOSE C_EMP_CURSOR;
  END IF;
  
  OPEN C_EMP_CURSOR(V_DEPT_ID);
  LOOP
  FETCH C_EMP_CURSOR INTO V_LAST_NAME,V_JOB_ID, V_HIRE_DATE,V_SALARY;
  EXIT WHEN C_EMP_CURSOR%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(V_LAST_NAME||' '||' '||
                         V_JOB_ID||' '||' '||
                         V_HIRE_DATE||' '||
                         V_SALARY);
  END LOOP;
  CLOSE C_EMP_CURSOR;
  END LOOP;
  CLOSE C_DEPT_CURSOR;
END;
