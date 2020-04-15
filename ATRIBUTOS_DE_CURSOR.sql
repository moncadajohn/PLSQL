DECLARE
  V_ROWS_DELETED VARCHAR2(30);
  V_EMPNO EMPLOYEES.EMPLOYEE_ID%TYPE:=176;
BEGIN
  DELETE FROM EMPLOYEES
  WHERE EMPLOYEE_ID = V_EMPNO;
  V_ROWS_DELETED:=(SQL%ROWCOUNT || ' ROW DELETED');
  DBMS_OUTPUT.PUT_LINE(V_ROWS_DELETED);
END;
