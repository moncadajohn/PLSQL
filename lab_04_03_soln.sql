DECLARE
  V_MAX_DEPTNO NUMBER;
  V_DEPT_NAME DEPARTMENTS.DEPARTMENT_NAME%TYPE:='EDUCATION';
  V_DEPT_ID NUMBER;
BEGIN
 
  UPDATE DEPARTMENTS SET LOCATION_ID = 3000
  WHERE DEPARTMENT_ID = 500;
  --SELECT MAX(DEPARTMENT_ID)INTO V_MAX_DEPTNO FROM DEPARTMENTS;
   --V_DEPT_ID := V_MAX_DEPTNO +10;  --ASIGNAR 10 AL M�XIMO
   
   /*INSERT INTO DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID) VALUES(V_DEPT_ID, V_DEPT_NAME, NULL);
   DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' L�NEA INSERTADA');*/
   
  
  --DBMS_OUTPUT.PUT_LINE('EL M�XIMO DEPARTAMENTO DE LA TABLA DEPARTMENTS ES: '||V_MAX_DEPTNO);
END;
/
SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = 500;
DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID = 500;